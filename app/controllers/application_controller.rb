# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  # before_action :keep_previous_url
  before_action :remove_authentication_flash_message_if_root_url_requested

  # rubocop:disable Style/GuardClause, Layout/LineLength
  def remove_authentication_flash_message_if_root_url_requested
    if session[:user_return_to] == root_path && flash[:alert] == I18n.t("devise.failure.unauthenticated")
      flash[:alert] = nil
    end
  end
  # rubocop:enable Style/GuardClause, Layout/LineLength

  def after_sign_out_path_for(*)
    new_user_session_path
  end

  # def frontend
  #   render file: "public/index.html", layout: false
  # end

  def after_sign_in_path_for(resource)
    return super if resource.is_a?(AdminUser)

    root_path
  end
end
