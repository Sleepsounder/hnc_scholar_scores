# frozen_string_literal: true

class PagesController < ApplicationController
  def index
    @scores = Score.where(
      user_id: current_user.id
    )
  end

  def new
    @applicant = eligible_applicant
    @applicant.update(available: false)
    @score = @applicant.scores.build
  end

  private

  def eligible_applicant
    available_applicants = Applicant.select do |applicant|
      applicant.users.count <= 2 &&
        applicant.users.all? { |user| user.id != current_user.id } &&
        applicant.available?
    end
    available_applicants.min_by(&:reviews)
  end
end
