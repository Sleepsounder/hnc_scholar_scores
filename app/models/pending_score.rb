# frozen_string_literal: true

class PendingScore < ApplicationRecord
  belongs_to :user
  belongs_to :applicant
end
