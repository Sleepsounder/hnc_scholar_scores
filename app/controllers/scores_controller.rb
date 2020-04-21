# frozen_string_literal: true

class ScoresController < ApplicationController
  def index
    @scores = Score.where(
      user_id: current_user.id
    )
    @score = Score.new
    @applicants = eligible_applicants.sort_by { |a| a.last_name}
    @applicant = eligible_applicants.min_by { |a| a.scores.count }
  end

  def new
    # TODO: create message saying there are no available applicants
    # if @applicant.nil? etc...
    @applicant = found_applicant
    found_applicant.update(available: false)
    @score = found_applicant.scores.build
    return unless @applicant.scores.count < 4

    # TODO: change 5.minutes below to something like 4.hours
    ApplicantAvailable.set(wait: 3.seconds).perform_later(@applicant)
  end

  def create
    if Score.create(score_params)
      flash[:success] = "Thank you for submitting!"
      @applicant = Applicant.find(score_params[:applicant_id])
      @applicant.update(available: true)
      redirect_to scores_path
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


  def eligible_applicants
    available_applicants = Applicant.select do |applicant|
      applicant.users.count < 3 &&
        applicant.users.all? { |user| user.id != current_user.id } &&
        applicant.available?
    end
    # available_applicants.min_by { |applicant| applicant.scores.count }
  end

  def found_applicant
    unless params[:format].nil?
      Applicant.find(params[:format])
    else
      Applicant.find(params[:score][:applicant_id])
    end
  end
end
