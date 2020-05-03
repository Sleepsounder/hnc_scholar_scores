# frozen_string_literal: true

class ApplicantAvailable < ActiveJob::Base
  def perform(pending_score)
    delete_pending_score(pending_score)
  end

  private

  def delete_pending_score(pending_score)
    return if pending_score.nil?

    pending_score.destroy
  end
end
