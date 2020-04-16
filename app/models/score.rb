# frozen_string_literal: true

class Score < ApplicationRecord
  belongs_to :applicant
  accepts_nested_attributes_for :applicant
  belongs_to :user
end
