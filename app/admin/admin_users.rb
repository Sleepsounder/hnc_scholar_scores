# frozen_string_literal: true

ActiveAdmin.register AdminUser do
  actions :all, except: [:destroy]
  permit_params :email, :password, :password_confirmation, :first_name, :last_name
  config.filters = false

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email
    column :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
