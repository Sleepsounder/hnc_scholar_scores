# frozen_string_literal: true

class Score < ApplicationRecord
  belongs_to :applicant
  accepts_nested_attributes_for :applicant
  belongs_to :user
  validates :financial, :academic, :recommend, :essay, presence: true

  FINANCIAL_NEED = ["5    Very high", "4.5", "4    High", "3.5", "3    Moderate", "2.5", "2    Low", "1.5", "1    None to very low", "0    No information provided -- disqualify"].freeze # rubocop:disable Layout/LineLength
  ACADEMICS = ["5    High grades, with challenging courses", "4.5    High grades, but with fewer challenging courses", "4    Good grades (B/B+ average) with difficult courses", "3.5    Good grades (As & Bs) but with fewer challenging courses", "3    Moderate grades with difficult courses", "2.5    Moderate grades, but with fewer challenging courses", "2    Fair grades with a few challenging courses", "1.5    Mediocre gades", "1    Poor student", "0    No academic information provided -- disqualify"].freeze # rubocop:disable Layout/LineLength
  RECOMMENDATIONS = ["5    Outstanding – \“best student I\'ve ever had\”", "4.5", "4    Excellent – cites specific qualities about the candidate", "3.5", "3    Average – boilerplate letter", "2.5", "2    So-so – \“has potential\”", "1.5", "1    Poor", "0    No recommendations provided -- disqualify"].freeze # rubocop:disable Layout/LineLength

  def applicant_full_name
    "#{applicant.first_name} #{applicant.last_name}"
  end

  def user_full_name
    "#{user.first_name} #{user.last_name}"
  end

  def mccoy_qualified
    # == 0 instead of .zero? allows for nil values
    if mccoy == 1
      "yes"
    elsif mccoy == 0 # rubocop:disable Style/NumericPredicate
      "no"
    else
      "nil"
    end
  end

  def human_date
    (updated_at - 4.hours).strftime("%b %d %I:%M%P")
  end

  def financial_to_s
    FINANCIAL_NEED.select { |string| string.to_f == financial }
  end

  def academic_to_s
    ACADEMICS.select { |string| string.to_f == academic }
  end

  def recommend_to_s
    RECOMMENDATIONS.select { |string| string.to_f == recommend }
  end

  def career_admin
    return if career.nil?

    if career.length >= 10
      "#{career.slice(0, 10)}..."
    else
      career
    end
  end

  def bd_admin
    return if bd.nil?

    if bd.length >= 10
      "#{bd.slice(0, 10)}..."
    else
      bd
    end
  end

  def comments_admin
    return if comments.nil?

    if comments.length >= 10
      "#{comments.slice(0, 10)}..."
    else
      comments
    end
  end
end
