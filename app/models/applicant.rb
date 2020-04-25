# frozen_string_literal: true

class Applicant < ApplicationRecord
  has_many :scores
  has_many :users, through: :scores

  def full_name_list
    list_item = "#{last_name}, #{first_name} - #{scores.count}"
    if scores.count == 1
      "#{list_item} review"
    else
      "#{list_item} reviews"
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def review_count
    scores.count
  end

  def mccoy_count
    return if scores.empty?

    true_count = 0
    scores.each do |score|
      next if score.mccoy.nil?

      true_count += score.mccoy
    end
    "#{true_count} of #{scores.count}"
  end

  def financial_avg
    return if scores.empty?

    total = scores.inject(0) { |sum, score| sum + score.financial }
    (total / scores.count).round(2)
  end

  def academic_avg
    return if scores.empty?

    total = scores.inject(0) { |sum, score| sum + score.academic }
    (total / scores.count).round(2)
  end

  def recommend_avg
    return if scores.empty?

    total = scores.inject(0) { |sum, score| sum + score.recommend }
    (total / scores.count).round(2)
  end

  def essay_avg
    return if scores.empty?

    total = scores.inject(0) { |sum, score| sum + score.essay }
    (total / scores.count).round(2)
  end
end
