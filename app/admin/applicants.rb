# frozen_string_literal: true

ActiveAdmin.register Applicant do
  actions :all, except: [:destroy]
  permit_params :first_name, :last_name, :address, :disqualified
  filter :last_name
  filter :first_name
  filter :users, label: "Readers"

  index do
    selectable_column
    id_column
    column "DQ", :disqualified
    column :last_name
    column :first_name
    column :city
    column :state
    column "Reviews", :review_count
    column "McCoy Count", :mccoy_count
    column "Fin Avg", :financial_avg
    column "Acad Avg", :academic_avg
    column "Rec Avg", :recommend_avg
    column "Imp Avg", :imp_avg
    column :non_fin_avg
    actions
  end

  csv do
    column :id
    column :last_name
    column :first_name
    column :dq
    column :reader_1
    column :r1_mc
    column :r1_fin
    column :r1_ac
    column :r1_rec
    column :r1_imp
    column :reader_2
    column :r2_mc
    column :r2_fin
    column :r2_ac
    column :r2_rec
    column :r2_imp
    column :reader_3
    column :r3_mc
    column :r3_fin
    column :r3_ac
    column :r3_rec
    column :r3_imp
    column :financial_avg
    column :academic_avg
    column :recommend_avg
    column :imp_avg
    column :non_fin_avg
  end
end
