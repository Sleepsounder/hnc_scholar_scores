# frozen_string_literal: true

ActiveAdmin.register RemovedApplicant do
  filter :user_last_name, as: :string, label: "Reader Last Name"
  filter :applicant_last_name, as: :string, label: "Applicant Last Name"
  config.clear_action_items!
  index do
    column "Removed Applicant" do |ra|
      ra.applicant.full_name
    end
    column "Reader" do |ra|
      ra.user.full_name
    end
    column :created_at
    actions
  end
end
