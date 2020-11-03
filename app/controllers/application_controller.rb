class ApplicationController < ActionController::API
  before_action :configur_permitted_parameters, if: :devise_controller?
  
  protected

  def configur_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation])
  end
end
