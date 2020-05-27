# frozen_string_literal: true

class AddMcCoyCountToApplicants < ActiveRecord::Migration[5.2]
  def change
    add_column :applicants, :mccoy_count, :string
  end
end
