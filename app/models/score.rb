# frozen_string_literal: true

class Score < ApplicationRecord
  belongs_to :applicant
  accepts_nested_attributes_for :applicant
  belongs_to :user
  validates :financial, :academic, :recommend, :essay, presence: true

  def applicant_full_name
    "#{applicant.first_name} #{applicant.last_name}"
  end

  def user_full_name
    "#{user.first_name} #{user.last_name}"
  end

  def mccoy_qualified
    mccoy == 1 ? "yes" : "no"
  end
end
