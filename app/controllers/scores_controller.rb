# frozen_string_literal: true

class ScoresController < ApplicationController
  def home
    if current_user.scores.any? { |score| score.pending? }
      @number_of_scores_reviewed = Score.where(
        user_id: current_user.id
      ).count
      @score = Score.where(user_id: current_user.id, pending: true).first
      @applicants = eligible_applicants.sort_by(&:last_name)
      @applicant = Applicant.find(@score.applicant_id)
    else
      @number_of_scores_reviewed = Score.where(
        user_id: current_user.id
      ).count
      @score = Score.new
      @applicants = eligible_applicants.sort_by(&:last_name)
      @applicant = eligible_applicants.min_by { |a| a.scores.count }
    end
  end

  def index
    @scores = Score.where(user_id: current_user.id)
    @removed_applicants = RemovedApplicant.where(user_id: current_user.id)
  end

  def new
    if params[:format].nil? && params[:score][:applicant_id].empty?
      flash[:alert] = "Please make a selection."
      redirect_to root_path
    else
      @applicant = found_applicant
      @score = found_applicant.scores.build
      return unless @applicant.scores.count < 4

      # TODO: change 3.seconds below to something like 1.hour
      ApplicantAvailable.set(wait: 3.seconds).perform_later(@applicant)
    end
  end

  def edit
    @score = Score.find(params[:id])
    @applicant = Applicant.find(@score.applicant_id)
  end

  def create
    @score = Score.new(score_params)
    @applicant = Applicant.find(score_params[:applicant_id])
    if @score.save
      flash[:notice] = "Thank you for submitting!"
      redirect_to root_path
    else render :new
    end
  end

  def update
    @score = Score.find(params[:id])
    @score[:pending] = false
    if @score.update(score_params)
      flash[:notice] = "Saved #{@score.applicant.full_name}'s scores!"
      redirect_to root_path
    else render :edit
    end
  end

  def destroy
    @score = Score.find(params[:id])
    @score.destroy
    redirect_to root_path
  end

  private

  def score_params
    params.require(:score).permit(
      :financial,
      :academic,
      :recommend,
      :essay,
      :comments,
      :applicant_id,
      :pending
    ).merge({ mccoy: params[:mccoy], user_id: current_user.id })
  end

  def eligible_applicants
    Applicant.select do |applicant|
      applicant.users.count < 3 &&
        applicant.users.all? { |user| user.id != current_user.id } &&
        applicant.removed_applicants.all? do |removed_applicant|
          removed_applicant.user_id != current_user.id
        end
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
