class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :admin?

  protected

  def configure_permitted_parameters
    added_attrs = %i[username email password password_confirmation remember_me avatar]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  private

  def admin?
    # redirect_to root_path unless current_user && current_user.admin
    redirect_to root_path unless current_user&.admin # pro syntax mdr
  end
end
