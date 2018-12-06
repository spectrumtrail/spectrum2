module ApplicationHelper
  def app_name
    "Spectrum Trail Running"
  end

  def user_avatar(user, options, height: 200, width: 200)
    if user.avatar.attached?
      image_tag(user.avatar, options)
    else
      fa_icon_tag("user", { class: "fa-5x fa-fw text-white" })
    end
  end
end
