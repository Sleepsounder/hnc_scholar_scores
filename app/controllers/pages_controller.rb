# frozen_string_literal: true

class PagesController < ApplicationController
	def index
		@scores = Score.where(
			user_id: current_user.id
		)
		@applicant = eligible_applicant
	end

	def new
		# add change applicant available to new button in index?
	end


	private

	# def eligible_applicant
	# 	all_elligible_applicants = Applicant.all.select do |applicant|
	# 		applicant.available == true && not_reviewed_by_current_user(applicant)
	# 	end
	# 	binding.pry
	# end 

	# def not_reviewed_by_current_user(applicant)
	# 	user_reviewed = applicant.users.any? { |user| user.id == current_user.id }
	# end

end
