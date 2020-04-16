# frozen_string_literal: true

class AddMccoyIntegerToScoresTable < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :mccoy, :integer
  end
end
