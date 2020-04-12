# frozen_string_literal: true

class CreateApplicants < ActiveRecord::Migration[5.2]
  def change
    create_table :applicants do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :link
      t.boolean :available
      t.boolean :mccoy
      t.integer :reviews
      t.integer :financial_avg
      t.integer :academic_avg
      t.integer :recommend_avg
      t.integer :essay_avg
      t.timestamps
    end
  end
end
