# frozen_string_literal: true

class PagesController < ApplicationController
	def index
		@scores = Score.where(
			user_id: current_user.id
		)
	end

	def new
		@applicant = eligible_applicant
		# to make unavailable while being graded!
		# @applicant.update(available: false)
	end

	private

	def eligible_applicant
		# TODO: make below code less n + 1 ish  
		available_applicants = Applicant.where(available: true)
		eligible_selection = available_applicants.reject do |applicant|
			applicant.users.any? { |user| user.id == current_user.id }
		end
		eligible_selection.sort_by{|applicant| applicant.reviews}.first
	end
end
