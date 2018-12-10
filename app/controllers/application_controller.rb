class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    edit_user_registration_path # User Profile View
  end

  protected
  
  def current_user
    super&.decorate
  end
end
