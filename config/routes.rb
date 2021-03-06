# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  get "scores/create"
  devise_for :users, controllers: { sessions: "users/sessions" }
  resources :scores
  resources :pending_scores
  get "removed_applicants/create"
  get "removed_applicants/delete_pending_score"
  delete "removed_applicants/destroy"
  root to: "scores#home"

  ActiveAdmin.routes(self)

  if Rails.env.development?
    mount Flipper::UI.app(Flipper), at: "/flipper"
  end

  devise_scope :admin_user do
    get "/admin/logout", to: "active_admin/devise/sessions#destroy"
  end

  # get "*path", to: "application#frontend", constraints: ->(request) { frontend_request?(request) }

  def frontend_request?(request)
    !request.xhr? && request.format.html?
  end
  # Might be an answer to combining User paths for Admin
  # devise_for :admin_users, {class_name: 'User'}.merge(ActiveAdmin::Devise.config)
end
