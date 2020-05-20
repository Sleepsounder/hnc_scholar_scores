# frozen_string_literal: true

class User < ApplicationRecord
  has_many :scores
  has_many :applicants, through: :scores
  has_many :removed_applicants
  has_one :pending_score
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_name
    "#{first_name} #{last_name}"
  end

  def initials
    "#{first_name.first}#{last_name.first}"
  end
end
