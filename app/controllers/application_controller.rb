class ApplicationController < ActionController::Base
  include CanCan::ControllerAdditions
  # protect_from_forgery with: :exception
  before_action :update_allowed_parameters, if: :devise_controller?
  # check_authorization unless: :devise_controller?

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :role) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password) }
  end
end
