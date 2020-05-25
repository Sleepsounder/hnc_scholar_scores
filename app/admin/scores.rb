# frozen_string_literal: true

ActiveAdmin.register Score do
  actions :all, except: [:destroy]
  permit_params :financial, :mccoy, :academic, :recommend, :essay, :comments, :bd, :career
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

  show do
    attributes_table do
      row "Applicant" do
        score.applicant_full_name
      end
      row "Reader" do
        score.user_full_name
      end
      row "McCoy" do
        score.mccoy_qualified
      end
      row :financial
      row :academic
      row :recommend
      row :essay
      row :career
      row :bd
      row :comments
    end
  end

  form do |f|
    f.inputs do
      f.input :applicant_full_name, input_html: { disabled: true }, label: "Applicant"
      f.input :user_full_name, input_html: { disabled: true }, label: "Reader"
      f.input :mccoy, as: :boolean
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
