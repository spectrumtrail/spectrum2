module ApplicationHelper
  def app_name
    "Spectrum Trail Running"
  end

  def current_user?
    current_user.present?
  end

  def user_avatar(user, options)
    if user.avatar.attached?
      image_tag(user.avatar.variant(resize: "200x200>"), options)
    else
      fa_icon_tag("user", { class: "fa-5x fa-fw text-white" })
    end
  end
end
