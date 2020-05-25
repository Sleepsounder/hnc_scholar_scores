# frozen_string_literal: true

ActiveAdmin.register Score do
  actions :all, except: [:destroy]
  permit_params :financial, :academic, :recommend, :essay, :comments, :bd, :career
  filter :user_last_name, as: :string, label: "Reader Last Name"
  filter :applicant_last_name, as: :string, label: "Applicant Last Name"

  index do
    selectable_column
    id_column
    column "Applicant", :applicant_full_name
    column "Reader", :user_full_name
    column "McCoy", :mccoy_qualified
    column "Fin", :financial
    column "Ac", :academic
    column "Rec", :recommend
    column "Imp", :essay
    column "Career", :career_admin
    column "BD", :bd_admin
    column "Comments", :comments_admin
    actions
  end

  form do |f|
    # row :user_full_name
    f.inputs do
      f.input :applicant_full_name, input_html: { disabled: true }
      f.input :user_full_name, input_html: { disabled: true }
      f.input :mccoy_qualified
      f.input :financial
      f.input :academic
      f.input :recommend
      f.input :essay
      f.input :career
      f.input :bd
      f.input :comments
      f.submit
    end
  end
end
