class Admin::BaseController < ApplicationController
  layout -> (controller) { controller.request.xhr? ? false : 'admin' }
  before_action :require_admin!, :set_body_class

  protected

  def set_body_class
    @body_class = "show-sidebar"
  end

  def require_admin!
    unless current_user.present? && current_user.is_admin?
      flash[:alert] = "This is for admin users only. Move along!"
      redirect_to root_path
    end
  end
  helper_method :require_admin!
end
