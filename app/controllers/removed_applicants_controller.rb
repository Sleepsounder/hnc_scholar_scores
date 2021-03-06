# frozen_string_literal: true

class RemovedApplicantsController < ApplicationController
  def create
    removed_applicant = RemovedApplicant.new(
      user_id: current_user.id,
      applicant_id: params[:format]
    )
    if removed_applicant.save
      current_user.pending_score.destroy
      flash[:notice] = "Removed #{removed_applicant.applicant.full_name} from your queue"
      redirect_to root_path
    else
      flash[:alert] = "Something went wrong."
      render root_path
    end
  end

  def delete_pending_score
    current_user.pending_score.destroy
    flash[:notice] = "Cancelled Review"
    redirect_to root_path
  end

  def destroy
    removed_applicant = RemovedApplicant.find(params[:format])
    if removed_applicant.destroy
      flash[:notice] = "Added #{removed_applicant.applicant.full_name} back to your queue"
    else
      flash[:alert] = "Something went wrong"
    end
    redirect_to scores_path
  end
end
