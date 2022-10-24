class ApplicationController < ActionController::Base
  helper_method :admin?

  private

  def admin?
    # redirect_to root_path unless current_user && current_user.admin
    redirect_to root_path unless current_user&.admin # pro syntax mdr
  end
end
