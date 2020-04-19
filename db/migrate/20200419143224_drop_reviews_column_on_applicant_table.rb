# frozen_string_literal: true

class DropReviewsColumnOnApplicantTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :applicants, :reviews, :integer
    remove_column :applicants, :mccoy, :boolean
  end
end
