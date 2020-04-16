# frozen_string_literal: true

class ScoresController < ApplicationController
  def create
    return unless Score.create(score_params)

    flash[:success] = "Thank you for submitting!"
    @applicant = Applicant.find(score_params[:applicant_id])
    @applicant.update(available: true)
    redirect_to pages_path
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
