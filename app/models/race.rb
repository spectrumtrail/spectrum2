class Race < ApplicationRecord
  belongs_to :series
  has_many :registrations
end
