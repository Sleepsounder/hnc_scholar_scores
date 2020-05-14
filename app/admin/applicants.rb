# frozen_string_literal: true

ActiveAdmin.register Applicant do
  actions :all, except: [:destroy]
  permit_params :first_name, :last_name, :address, :disqualified

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :address
    column "Reviews", :review_count
    column "McCoy Count", :mccoy_count
    column :financial_avg
    column :academic_avg
    column :recommend_avg
    column :essay_avg
    column :disqualified
    actions
  end
end
