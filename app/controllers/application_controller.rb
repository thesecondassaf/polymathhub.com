class ApplicationController < ActionController::Base
  # allow devise views & controllers accept extra parameters
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    added_attrs = %i[displayname email password password_confirmation]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  end
end
