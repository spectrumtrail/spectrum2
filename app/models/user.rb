class User < ApplicationRecord
  default_scope -> { where(deleted_at: nil) }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar

  DIVISIONS = ["FEMALE", "MALE", "OPEN"].freeze

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
    ["Newcomer", "Learner", "Master", "Veteran", "Elite"].sample
  end
end
