class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def default_url_options
    { host: ENV['www.Twitter-redesign.com'] || 'localhost:3000' }
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:username, :email, :password, :password_confirmation, :remember_me)
    end
    devise_parameter_sanitizer.permit(:sign_in) do |u|
      u.permit(:login, :username, :email, :password, :remember_me)
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:username, :email, :password, :password_confirmation, :current_password, :cover, :profile)
    end
  end
end
