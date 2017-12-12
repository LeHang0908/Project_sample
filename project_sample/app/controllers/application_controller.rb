class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionHelper
   #before_action :require_login
    def require_login
      return if logged_in?
      redirect_to login_path
    end
end
