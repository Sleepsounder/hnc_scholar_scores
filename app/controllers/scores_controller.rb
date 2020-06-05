# frozen_string_literal: true

class ScoresController < ApplicationController
  def home
    # TODO: Eager load - takes way to long to load home page.
    @number_of_scores_reviewed = current_user.scores.count
    @score = Score.new
    @applicants = eligible_applicants.sort_by(&:last_name)
    unless current_user.pending_score.nil?
      @pending_applicant = Applicant.find(current_user.pending_score.applicant_id)
    end
    @applicant = @applicants.min_by { |a| (a.scores.count + a.pending_scores.count) }
  end

  def index
    @scores = Score.includes([:applicant]).where(user_id: current_user.id).sort_by(&:updated_at).reverse # rubocop:disable Layout/LineLength
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

      ApplicantAvailable.set(wait: 18.hours).perform_later(@pending_score)
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
      ApplicantScoreAverages.perform_later(@applicant)
    else render :new
    end
  end

  def update
    @score = Score.find(params[:id])
    if @score.update(score_params)
      flash[:notice] = "Update saved!"
      redirect_to root_path
      ApplicantScoreAverages.perform_later(@score.applicant)
    else render :edit
    end
  end

  def destroy
    @score = Score.find(params[:id])
    @score.destroy
    redirect_to scores_path
    ApplicantScoreAverages.perform_later(@score.applicant)
  end

  private

  def score_params
    mccoy = if params[:mccoy] == "1"
              1
            else
              0
            end
    params.require(:score).permit(
      :financial,
      :financial_to_s,
      :academic,
      :academic_to_s,
      :recommend,
      :recommend_to_s,
      :essay,
      :comments,
      :applicant_id,
      :career,
      :bd,
      :disqualified
    ).merge({ mccoy: mccoy, user_id: current_user.id })
  end

  def eligible_applicants
    Applicant.includes([:scores], [:users], [:removed_applicants]).select do |applicant|
      !applicant.disqualified? &&
        (applicant.scores.count + applicant.pending_scores.count < 3) &&
        (applicant.users.all? { |user| user.id != current_user.id }) &&
        (applicant.removed_applicants.all? { |ra| ra.user_id != current_user.id })
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
