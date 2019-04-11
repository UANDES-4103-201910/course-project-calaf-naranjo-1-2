json.extract! admin, :id, :username, :password, :bio, :email, :geofence, :location, :float, :latitude, :created_at, :updated_at
json.url admin_url(admin, format: :json)
