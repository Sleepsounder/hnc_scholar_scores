# frozen_string_literal: true

class AdminController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  # def after_sign_in_path_for(resource)
  #   new_admin_session_user_path
  # end
end
