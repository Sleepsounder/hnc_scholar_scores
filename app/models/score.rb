# frozen_string_literal: true

class Score < ApplicationRecord
  belongs_to :applicant
  belongs_to :user
end
