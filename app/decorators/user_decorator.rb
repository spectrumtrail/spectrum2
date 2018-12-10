class UserDecorator < Draper::Decorator
  delegate_all

  def name
    preferred_name || "Trail Runner"
  end
end
