# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  # def frontend
  #   render file: "public/index.html", layout: false
  # end
end
