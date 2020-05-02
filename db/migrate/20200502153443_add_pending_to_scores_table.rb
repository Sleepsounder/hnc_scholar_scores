# frozen_string_literal: true

class AddPendingToScoresTable < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :pending, :boolean
  end
end
