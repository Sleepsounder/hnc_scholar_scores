# frozen_string_literal: true

class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.belongs_to :user
      t.belongs_to :applicant
      t.text :comments
      t.boolean :mccoy
      t.integer :financial
      t.integer :academic
      t.integer :recommend
      t.integer :essay
      t.timestamps
    end
  end
end
