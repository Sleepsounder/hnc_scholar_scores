# frozen_string_literal: true

ActiveAdmin.register Score do
  actions :all, except: [:destroy]
  permit_params :financial, :mccoy, :academic, :recommend, :essay, :comments, :bd, :career
  filter :applicant_last_name, as: :string, label: "Applicant Last Name"
  filter :user_last_name, as: :string, label: "Reader Last Name"
  filter :mccoy, label: "McCoy (1 = yes, 0 = no)"
  scope :joined, :default => true do |scores|
    scores.includes [:applicant, :user]
  end

  index do
    # For creating an ordered list
    # 35 needs to be set to same page size in active_admin.rb => config.default_per_page = 35
    @index = 35 * ((params[:page] || 1).to_i - 1)
    column do
      @index += 1
    end
    selectable_column
    id_column
    column :applicant_name, sortable: "applicants.last_name" do |score|
      score.applicant.full_name
    end
    column :reader_name, sortable: "users.last_name" do |score|
      score.user.full_name
    end
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
