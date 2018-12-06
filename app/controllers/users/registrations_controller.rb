class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters
  layout :resolve_layout

  def destroy
    resource.soft_delete!
    super
  end

  protected

  def configure_permitted_parameters
    the_keys = [
      :allows_email,
      :allows_texting,
      :avatar,
      :birthdate,
      :cell_phone,
      :first_name,
      :hometown,
      :is_rogue_member,
      :last_name,
      :life_long_athlete,
      :medical_notes,
      :preferred_division,
      :preferred_shirt_size,
      :time_zone
    ]
    devise_parameter_sanitizer.permit(:sign_up, keys: the_keys)
    devise_parameter_sanitizer.permit(:account_update, keys: the_keys)
  end

  def after_sign_up_path_for(resource)
    # will be user_signups_path
  end

  def after_update_path_for(resource)
    edit_user_registration_path
  end

  def resolve_layout
    case action_name
    when "new", "create"
      "devise"
    else
      "application"
    end
  end
end
