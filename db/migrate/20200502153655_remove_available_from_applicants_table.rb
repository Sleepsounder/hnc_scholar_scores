# frozen_string_literal: true

class RemoveAvailableFromApplicantsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :applicants, :available, :boolean
  end
end
