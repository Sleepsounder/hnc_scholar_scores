# frozen_string_literal: true

ActiveAdmin.register Applicant do
  actions :all, except: [:destroy]
  permit_params :first_name, :last_name, :address, :disqualified

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column "Reviews", :review_count
    column "McCoy Count", :mccoy_count
    column :financial_avg
    column :academic_avg
    column :recommend_avg
    column :essay_avg
    column :disqualified
    actions
  end

  csv force_quotes: true, col_sep: ";" do
    column :id
    column :last_name
    column :first_name
    column :dq
    column :reader_1
    column :r1_mc
    column :r1_fin
    column :r1_ac
    column :r1_rec
    column :r1_ess
    column :reader_2
    column :r2_mc
    column :r2_fin
    column :r2_ac
    column :r2_rec
    column :r2_ess
    column :reader_3
    column :r3_mc
    column :r3_fin
    column :r3_ac
    column :r3_rec
    column :r3_ess
    column :financial_avg
    column :academic_avg
    column :recommend_avg
    column :essay_avg
  end
end
