# frozen_string_literal: true

ActiveAdmin.register Score do
  actions :all, except: [:destroy]
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
end
