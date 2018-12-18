class UserDecorator < Draper::Decorator
  delegate_all

  def avatar_image
    if object.avatar.present?
      h.image_tag(object.avatar)
    else
      h.fa_icon_tag("user", { class: "fa-5x fa-fw text-white" })
    end
  end

  def name
    preferred_name || "Trail Runner"
  end

  def joined_ago_time
    h.local_time_ago(user.created_at)
  end
end
