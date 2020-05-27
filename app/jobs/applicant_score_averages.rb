# frozen_string_literal: true

class ApplicantScoreAverages < ActiveJob::Base
  def perform(applicant)
    update_applicant_score_averages(applicant)
  end

  private

  def update_applicant_score_averages(applicant)
    scores = applicant.scores
    if scores.empty?
      applicant.update(
        fin_avg: nil,
        acad_avg: nil,
        rec_avg: nil,
        imp_avg: nil,
        non_fin_avg: nil,
        reviews: 0,
        mccoy_count: ""
      )
    else
      fin_avg = score_avg(scores.map(&:financial))
      acad_avg = score_avg(scores.map(&:academic))
      rec_avg = score_avg(scores.map(&:recommend))
      imp_avg = score_avg(scores.map(&:essay))
      mccoy_count = mccoy_to_string(scores.map(&:mccoy))
      applicant.update(
        fin_avg: fin_avg,
        acad_avg: acad_avg,
        rec_avg: rec_avg,
        imp_avg: imp_avg,
        non_fin_avg: acad_avg + rec_avg + imp_avg,
        reviews: scores.count,
        mccoy_count: mccoy_count
      )
    end
  end

  def score_avg(score_array)
    best_scores = if score_array.count == 3
                    score_array.max_by(2) { |n| n }
                  else
                    score_array
                  end
    total = best_scores.inject(0) { |sum, float| sum + float }
    (total / best_scores.count).round(2)
  end

  def mccoy_to_string(mccoy_array)
    true_count = 0
    mccoy_array.each do |mccoy|
      next if mccoy.nil?

      true_count += mccoy
    end
    if true_count.zero?
      "none"
    elsif true_count == mccoy_array.count
      "all"
    else
      "#{true_count} of #{mccoy_array.count}"
    end
  end
end
