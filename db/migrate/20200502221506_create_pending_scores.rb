# frozen_string_literal: true

class CreatePendingScores < ActiveRecord::Migration[5.2]
  def change
    create_table :pending_scores do |t|
      t.references :user, foreign_key: true
      t.references :applicant, foreign_key: true
      t.timestamps
    end
  end
end
