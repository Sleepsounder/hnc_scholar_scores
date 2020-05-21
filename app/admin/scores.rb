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
    column :career do |score|
      if score.career.length >= 10
        "#{score.career.slice(0, 10)}..."
      else
        score.career
      end
    end
    column "BD", :bd do |score|
      if score.bd.length >= 10
        "#{score.bd.slice(0, 10)}..."
      else
        score.bd
      end
    end
    column :comments do |score|
      if score.comments.length >= 10
        "#{score.comments.slice(0, 10)}..."
      else
        score.comments
      end
    end
    actions
  end
end
