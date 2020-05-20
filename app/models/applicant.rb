# frozen_string_literal: true

class Applicant < ApplicationRecord
  has_many :scores
  has_many :removed_applicants
  has_many :users, through: :scores
  has_many :pending_scores

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

  def dq
    if disqualified == true
      "yes"
    else
      "no"
    end
  end

  def reader_1
    return if users.first.nil?

    @reader1 = users.first
    @reader1_score = scores&.select { |score| score.user_id == @reader1.id }

    @reader1.initials
  end

  def r1_mc
    return if @reader1_score.nil?

    @reader1_score.first.mccoy_qualified
  end

  def r1_fin
    return if @reader1_score.nil?

    @reader1_score.first.financial
  end

  def r1_ac
    return if @reader1_score.nil?

    @reader1_score.first.academic
  end

  def r1_rec
    return if @reader1_score.nil?

    @reader1_score.first.recommend
  end

  def r1_ess
    return if @reader1_score.nil?

    @reader1_score.first.essay
  end

  def reader_2
    return if users.second.nil?

    @reader2 = users.second
    @reader2_score = scores&.select { |score| score.user_id == @reader2.id }

    @reader2.initials
  end

  def r2_mc
    return if @reader2_score.nil?

    @reader2_score.first.mccoy_qualified
  end

  def r2_fin
    return if @reader2_score.nil?

    @reader2_score.first.financial
  end

  def r2_ac
    return if @reader2_score.nil?

    @reader2_score.first.academic
  end

  def r2_rec
    return if @reader2_score.nil?

    @reader2_score.first.recommend
  end

  def r2_ess
    return if @reader2_score.nil?

    @reader2_score.first.essay
  end

  def reader_3
    return if users.third.nil?

    @reader3 = users.third
    @reader3_score = scores&.select { |score| score.user_id == @reader3.id }

    @reader3.initials
  end

  def r3_mc
    return if @reader3_score.nil?

    @reader3_score.first.mccoy_qualified
  end

  def r3_fin
    return if @reader3_score.nil?

    @reader3_score.first.financial
  end

  def r3_ac
    return if @reader3_score.nil?

    @reader3_score.first.academic
  end

  def r3_rec
    return if @reader3_score.nil?

    @reader3_score.first.recommend
  end

  def r3_ess
    return if @reader3_score.nil?

    @reader3_score.first.essay
  end
end
