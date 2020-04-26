# frozen_string_literal: true

class RemovedApplicantsController < ApplicationController
  def create
    removed_applicant = RemovedApplicant.new(
      user_id: current_user.id,
      applicant_id: params[:format]
    )
    if removed_applicant.save
      redirect_to root_path
    else
      flash[:error] = "Something went wrong."
      render root_path
    end
  end

  def destroy
    @removed_applicant = RemovedApplicant.find(params[:format])
    if @removed_applicant.destroy
      flash[:notice] = "Added back to queue"
    else
      flash[:error] = "Something went wrong"
    end
    redirect_to scores_path
  end
end
