class Geofence < ApplicationRecord
  has_many :admin

  validates :region, presence: true
end
