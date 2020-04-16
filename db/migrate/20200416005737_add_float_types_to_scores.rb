# frozen_string_literal: true

class AddFloatTypesToScores < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :financial, :float
    add_column :scores, :academic, :float
    add_column :scores, :recommend, :float
    add_column :scores, :essay, :float
  end
end
