class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
  flash[:error] = "Access denied!"
  redirect_to root_url
	end

  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

	protected
	def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) << :name
  	devise_parameter_sanitizer.for(:account_update) << :name
  end


  private
  def record_not_found
    flash[:alert] = 'Ten rekord nie istnieje'
    redirect_to action: :index
  end
end
