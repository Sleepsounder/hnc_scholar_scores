# frozen_string_literal: true

class User < ApplicationRecord
  has_many :scores
  has_many :applicants, through: :scores
  has_many :removed_applicants
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
