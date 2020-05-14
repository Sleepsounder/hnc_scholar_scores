# frozen_string_literal: true

class AddCareerToScores < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :career, :string
    add_column :scores, :bd, :string
  end
end
