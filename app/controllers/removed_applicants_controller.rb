# frozen_string_literal: true

class RemovedApplicantsController < ApplicationController
  def create
    removed_applicant = RemovedApplicant.new(
      user_id: current_user.id,
      applicant_id: params[:format]
    )
    if removed_applicant.save
      flash[:alert] = "Removed #{removed_applicant.applicant.full_name} from your queue"
      redirect_to root_path
    else
      flash[:error] = "Something went wrong."
      render root_path
    end
  end

  def destroy
    removed_applicant = RemovedApplicant.find(params[:format])
    if removed_applicant.destroy
      flash[:notice] = "Added #{removed_applicant.applicant.full_name} back to your queue"
    else
      flash[:error] = "Something went wrong"
    end
    redirect_to scores_path
  end
end
