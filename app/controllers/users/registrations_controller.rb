class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  def destroy
    resource.soft_delete!
    super
  end

  protected

  def configure_permitted_parameters
    the_keys = [
      :birthdate,
      :cell_phone,
      :first_name,
      :hometown,
      :is_rogue_member,
      :last_name,
      :life_long_athlete,
      :time_zone
    ]
    devise_parameter_sanitizer.permit(:sign_up, keys: the_keys)
    devise_parameter_sanitizer.permit(:account_update, keys: the_keys)
  end

  def after_sign_up_path_for(resource)
  end

  def after_update_path_for(resource)
  end

  def resolve_layout
  end
end
