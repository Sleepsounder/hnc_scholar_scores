# frozen_string_literal: true

class CreatePendingScores < ActiveRecord::Migration[5.2]
  def change
    create_table :pending_scores do |t|
      t.references :user, foreign_key: true
      t.references :applicant, foreign_key: true
      t.text :comments
      t.integer :mccoy
      t.float :financial
      t.float :academic
      t.float :recommend
      t.float :essay

      t.timestamps
    end
  end
end
