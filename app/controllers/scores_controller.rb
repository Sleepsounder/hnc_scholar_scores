# frozen_string_literal: true

class ScoresController < ApplicationController
  def home
    @all_applicants_number = Applicant.all.count
    @number_of_scores_reviewed = Score.where(
      user_id: current_user.id
    ).count
    @score = Score.new
    @applicants = eligible_applicants.sort_by(&:last_name)
    @applicant = eligible_applicants.min_by { |a| a.scores.count }
  end

  def index
    @scores = Score.where( user_id: current_user.id )
    @removed_applicants = RemovedApplicant.where( user_id: current_user.id)
  end

  def new
    @applicant = found_applicant
    found_applicant.update(available: false)
    @score = found_applicant.scores.build
    return unless @applicant.scores.count < 4

    # TODO: change 3.seconds below to something like 1.hour
    ApplicantAvailable.set(wait: 3.seconds).perform_later(@applicant)
  end

  def edit
    @score = Score.find(params[:id])
  end

  def create
    @score = Score.new(score_params)
    @applicant = Applicant.find(score_params[:applicant_id])
    if @score.save
      flash[:notice] = "Thank you for submitting!"
      @applicant.update(available: true)
      redirect_to root_path
    else render :new
    end
  end

  def update
    @score = Score.find(params[:id])
    if @score.update(score_params)
      flash[:notice] = "Update saved!"
      redirect_to root_path
    else render :edit
    end
  end

  private

  def score_params
    params.require(:score).permit(
      :financial,
      :academic,
      :recommend,
      :essay,
      :comments,
      :applicant_id
    ).merge({ mccoy: params[:mccoy], user_id: current_user.id })
  end

  def eligible_applicants
    Applicant.select do |applicant|
      applicant.users.count < 3 &&
        applicant.users.all? { |user| user.id != current_user.id } &&
        applicant.available?
        # TODO: if removed_applicant join should not include
    end
  end

  def found_applicant
    if !params[:format].nil?
      Applicant.find(params[:format])
    else
      Applicant.find(params[:score][:applicant_id])
    end
  end
end
