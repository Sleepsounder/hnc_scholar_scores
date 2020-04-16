# frozen_string_literal: true

class DropColumnsFromApplicantTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :applicants, :financial_avg, :integer
    remove_column :applicants, :academic_avg, :integer
    remove_column :applicants, :recommend_avg, :integer
    remove_column :applicants, :essay_avg, :integer
  end
end
