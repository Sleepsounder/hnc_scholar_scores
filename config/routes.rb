# frozen_string_literal: true

Rails.application.routes.draw do
  get 'scores/create'
  root to: "pages#index"
  devise_for :users
  resources :pages
  resources :scores

  ActiveAdmin.routes(self)

  if Rails.env.development?
    mount Flipper::UI.app(Flipper), at: "/flipper"
  end

  # get "*path", to: "application#frontend", constraints: ->(request) { frontend_request?(request) }

  def frontend_request?(request)
    !request.xhr? && request.format.html?
  end
end
