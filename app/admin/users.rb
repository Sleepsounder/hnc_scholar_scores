# frozen_string_literal: true

ActiveAdmin.register User do
  menu label: "Readers"
  actions :all, except: [:destroy]
  permit_params :email, :first_name, :last_name, :password, :password_reset
  config.clear_action_items!
  config.filters = false

  action_item only: :index do
    link_to "New Reader", "/admin/users/new"
  end

  index title: "Readers" do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email
    column "Review Count", :number_of_reviews
    actions
  end

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :email
      row "Review Count" do
        user.number_of_reviews
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.submit
    end
  end
end
