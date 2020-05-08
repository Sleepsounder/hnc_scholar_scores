# frozen_string_literal: true

class AddColumnsToApplicants < ActiveRecord::Migration[5.2]
  def change
    add_column :applicants, :middle_initial, :string
    add_column :applicants, :city, :string
    add_column :applicants, :state, :string
    add_column :applicants, :zip_code, :string
    add_column :applicants, :application_received, :date
  end
end
