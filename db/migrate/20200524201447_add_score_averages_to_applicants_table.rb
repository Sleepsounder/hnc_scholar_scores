# frozen_string_literal: true

class AddScoreAveragesToApplicantsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :applicants, :fin_avg, :float
    add_column :applicants, :acad_avg, :float
    add_column :applicants, :rec_avg, :float
    add_column :applicants, :imp_avg, :float
    add_column :applicants, :non_fin_avg, :float
    add_column :applicants, :reviews, :integer, default:
  end
end
