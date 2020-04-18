# frozen_string_literal: true

ActiveAdmin.register Applicant do
  permit_params :first_name, :last_name, :address

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :address
  end
end
