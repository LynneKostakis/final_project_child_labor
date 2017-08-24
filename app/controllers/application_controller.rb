class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_parent!
  
  
   before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:parent_name, :family_name])
    devise_parameter_sanitizer.permit(:account_update, :keys => [:parent_name, :family_name])
  end
  
  

 
end
