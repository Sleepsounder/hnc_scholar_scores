# frozen_string_literal: true

class RemovedApplicant < ApplicationRecord
  belongs_to :user
  belongs_to :applicant
end
