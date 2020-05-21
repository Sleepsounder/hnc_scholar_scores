# frozen_string_literal: true

ActiveAdmin.register User do
  menu label: "Readers"
  actions :all, except: [:destroy]
  permit_params :email, :first_name, :last_name
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
    column :created_at
    actions
  end
end
