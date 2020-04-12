# frozen_string_literal: true

class User < ApplicationRecord
  has_many :scores
  has_many :applicants, through: :scores
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
