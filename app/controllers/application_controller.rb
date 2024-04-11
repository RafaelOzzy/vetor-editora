class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :cpf, :phone_number, :date_of_birth, :admin])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :cpf, :phone_number, :date_of_birth, :admin])
  end

  protected

  def after_sign_in_path_for(_resource)
    patients_path
  end

end
