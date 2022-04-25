class ApplicationController < ActionController::Base
  # before_action :set_paper_trail_whodunnit
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(permitted_attributes) }

    devise_parameter_sanitizer.permit(permitted_attributes) do |u|
      u.permit(permitted_attributes)
    end
  end

  def permitted_attributes
    [
      :email,
      :password,
      :password_confirmation,
      { profile_attributes: %i[first_name last_name full_name phone biography avatar] }
    ]
  end
end
