json.extract! profile, :id, :user_id, :picture, :biography, :city, :country, :created_at, :updated_at
json.url profile_url(profile, format: :json)
