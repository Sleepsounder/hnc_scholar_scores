# frozen_string_literal: true

class AddDisqualifiedToApplicants < ActiveRecord::Migration[5.2]
  def change
    add_column :applicants, :disqualified, :boolean
  end
end
