# frozen_strin_literal: true

ActiveAdmin.register Score do
  permit_params :applicant_id,
                :user_id,
                :comments,
                :mccoy,
                :financial,
                :academic,
                :recommend,
                :essay

  index do
    selectable_column
    id_column
    column :applicant_id
    column :user_id
    column :comments
    column :mccoy
    column :financial
    column :academic
    column :recommend
    column :essay
  end
end
