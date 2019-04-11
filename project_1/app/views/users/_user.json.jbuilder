json.extract! user, :id, :username, :email, :password, :bio, :latitude, :longitude, :location, :suspended, :blacklisted, :blocked, :post, :created_at, :updated_at
json.url user_url(user, format: :json)
