# frozen_string_literal: true

class ChangeColumnDefaultToZeroMccoyScoresTable < ActiveRecord::Migration[5.2]
  def change
    change_column_default :scores, :mccoy, 0
  end
end
