# frozen_string_literal: true

class ScoresController < ApplicationController
  def create
    Score.create(score_params)
  end

  private

  def score_params
    params.require(:score).permit(:financial, :academic, :recommend, :essay, :comments, :applicant_id).merge({mccoy: params[:mccoy], user_id: current_user.id})
  end
end
