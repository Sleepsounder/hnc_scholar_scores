# frozen_string_literal: true

ActiveAdmin.register User do
  menu label: "Readers"
  actions :all, except: [:destroy]
  permit_params :email, :first_name, :last_name

  index title: "Readers" do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end
end
