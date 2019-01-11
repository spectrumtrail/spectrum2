class Series < ApplicationRecord
  validates :name, presence: true
  validates :short_description, presence: true
  validates :long_description, presence: true

  has_one_attached :promo_image
  has_one_attached :banner_image
  has_many_attached :gallery_image
end
