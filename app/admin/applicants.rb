# frozen_string_literal: true

ActiveAdmin.register Applicant do
  actions :all, except: [:destroy]
  permit_params :first_name,
                :last_name,
                :address,
                :link,
                :middle_initial,
                :city,
                :state,
                :zip_code,
                :application_received,
                :disqualified
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
    column "McCoy", :mccoy_count
    column :fin_avg
    column :acad_avg
    column :rec_avg
    column :imp_avg
    column :non_fin_avg
    column :reviews
    column "Reviewers" do |applicant|
      applicant.users.map(&:initials).join(", ")
    end
    actions
  end

  show do
    attributes_table do
      row :id
      row "DQ" do
        applicant.disqualified
      end
      row :last_name
      row :middle_initial
      row :first_name
      row :address
      row :city
      row :state
      row :zip_code
      row :link
      row :application_received
      row "McCoy" do
        applicant.mccoy_count
      end
      row :fin_avg
      row :acad_avg
      row :rec_avg
      row :imp_avg
      row :non_fin_avg
      row :reviews
      row "Reviewers" do
        applicant.users.map(&:initials).join(", ")
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :id, input_html: { disabled: true }
      f.input :disqualified, as: :boolean
      f.input :last_name
      f.input :middle_initial
      f.input :first_name
      f.input :address
      f.input :city
      f.input :state
      f.input :zip_code
      f.input :link
      f.input :application_received, as: :datepicker
      f.submit
    end
  end

  csv do
    column :id
    column :dq
    column :last_name
    column :first_name
    column :reviews
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
    column :fin_avg
    column :acad_avg
    column :rec_avg
    column :imp_avg
    column :non_fin_avg
  end
end
