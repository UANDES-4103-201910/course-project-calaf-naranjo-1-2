class Admin < ApplicationRecord
  belongs_to :user
  belongs_to :geofence
end
