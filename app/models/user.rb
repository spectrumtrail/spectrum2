class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def name
    if first_name.present?
      "#{first_name} #{last_name}".titleize
    else
      "Not Set"
    end
  end

  def soft_delete!
    update(:deleted_at, Time.current)
  end

  def level
    ["Newcomer", "Learner", "Veteran", "Elite"].sample
  end
end
