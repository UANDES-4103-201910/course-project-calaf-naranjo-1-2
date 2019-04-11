json.extract! super_admin, :id, :email, :password, :latitude, :longitude, :username, :bio, :post_id, :location, :created_at, :updated_at
json.url super_admin_url(super_admin, format: :json)
