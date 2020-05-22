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

    financial_scores = scores.map(&:financial)
    best_scores = if financial_scores.count == 3
                    financial_scores.max_by(2) { |n| n }
                  else
                    financial_scores
                  end
    total = best_scores.inject(0) { |sum, float| sum + float }
    (total / best_scores.count).round(2)
  end

  def academic_avg
    return if scores.empty?

    academic_scores = scores.map(&:academic)
    best_scores = if academic_scores.count == 3
                    academic_scores.max_by(2) { |n| n }
                  else
                    academic_scores
                  end
    total = best_scores.inject(0) { |sum, float| sum + float }
    (total / best_scores.count).round(2)
  end

  def recommend_avg
    return if scores.empty?

    recommend_scores = scores.map(&:recommend)
    best_scores = if recommend_scores.count == 3
                    recommend_scores.max_by(2) { |n| n }
                  else
                    recommend_scores
                  end
    total = best_scores.inject(0) { |sum, float| sum + float }
    (total / best_scores.count).round(2)
  end

  def imp_avg
    return if scores.empty?

    essay_scores = scores.map(&:essay)
    best_scores = if essay_scores.count == 3
                    essay_scores.max_by(2) { |n| n }
                  else
                    essay_scores
                  end
    total = best_scores.inject(0) { |sum, float| sum + float }
    (total / best_scores.count).round(2)
  end

  def non_fin_avg
    return if scores.empty?

    academic_avg + recommend_avg + imp_avg
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

  def r1_imp
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

  def r2_imp
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

  def r3_imp
    return if @reader3_score.nil?

    @reader3_score.first.essay
  end
end
