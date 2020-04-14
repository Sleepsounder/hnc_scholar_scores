# frozen_string_literal: true

class RemoveMccoyBooleanFromScoresTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :scores, :mccoy, :boolean
  end
end
