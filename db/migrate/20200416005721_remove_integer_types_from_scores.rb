# frozen_string_literal: true

class RemoveIntegerTypesFromScores < ActiveRecord::Migration[5.2]
  def change
    remove_column :scores, :financial, :integer
    remove_column :scores, :academic, :integer
    remove_column :scores, :recommend, :integer
    remove_column :scores, :essay, :integer
  end
end
