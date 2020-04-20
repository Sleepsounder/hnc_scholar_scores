# frozen_string_literal: true

class ScoresController < ApplicationController
  def index
    @scores = Score.where(
      user_id: current_user.id
    )
    @applicants = eligible_applicants
  end

  def new
    # TODO: create message saying there are no available applicants
    # if @applicant.nil? etc...
    @applicant.update(available: false)
    @score = @applicant.scores.build
    return unless @applicant.scores.count < 4

    # TODO: change 5.minutes below to something like 4.hours
    ApplicantAvailable.set(wait: 5.minutes).perform_later(@applicant)
  end

  def create
    if Score.create(score_params)
      flash[:success] = "Thank you for submitting!"
      @applicant = Applicant.find(score_params[:applicant_id])
      @applicant.update(available: true)
      redirect_to pages_path
    else render :new
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
end

private

def eligible_applicants
  available_applicants = Applicant.select do |applicant|
    applicant.users.count < 4 &&
      applicant.users.all? { |user| user.id != current_user.id } &&
      applicant.available?
  end
  # available_applicants.min_by { |applicant| applicant.scores.count }
end
