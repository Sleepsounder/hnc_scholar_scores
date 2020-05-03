# frozen_string_literal: true

class ScoresController < ApplicationController
  def home
    @number_of_scores_reviewed = current_user.scores.count
    @score = Score.new
    @applicants = eligible_applicants.sort_by(&:last_name)
    @applicant = if !current_user.pending_score.nil?
                   Applicant.find(current_user.pending_score.applicant_id)
                 else
                   eligible_applicants.min_by { |a| a.scores.count }
                 end
  end

  def index
    @scores = Score.where(user_id: current_user.id).sort_by(&:updated_at).reverse
    @removed_applicants = RemovedApplicant.where(user_id: current_user.id)
  end

  def new
    if params[:format].nil? && params[:score][:applicant_id].empty?
      flash[:alert] = "Please make a selection."
      redirect_to root_path
    else
      @applicant = found_applicant
      @score = found_applicant.scores.build
      @pending_score = current_user.pending_score ||
                       PendingScore.create(
                         user_id: current_user.id,
                         applicant_id: @applicant.id
                       )
      # Dunno Why I added this
      # return unless @applicant.scores.count < 3

      # TODO: change Job 3.seconds below to something like 1.hour
      # ApplicantAvailable.set(wait: 3.seconds).perform_later(@applicant)
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
      @pending_score = PendingScore.find_by(user_id: current_user.id)
      @pending_score.destroy
      flash[:notice] = "Thank you for submitting!"
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
      :applicant_id
    ).merge({ mccoy: params[:mccoy], user_id: current_user.id })
  end

  def eligible_applicants
    Applicant.select do |applicant|
      applicant.users.count + applicant.pending_scores.count < 3 &&
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
