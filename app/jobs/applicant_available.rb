# frozen_string_literal: true

class ApplicantAvailable < ActiveJob::Base
  def perform(applicant)
    make_applicant_available(applicant)
  end

  private

  def make_applicant_available(applicant)
    applicant.update(available: true)
  end
end
