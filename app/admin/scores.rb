# frozen_string_literal: true

ActiveAdmin.register Score do
  index do
    selectable_column
    id_column
    column "Applicant", :applicant_full_name
    column "Reader", :user_full_name
    column :mccoy_qualified
    column :financial
    column :academic
    column :recommend
    column :essay
    column :comments
  end
end
