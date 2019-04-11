json.extract! post, :id, :location, :privacy, :resolve, :date, :title, :description, :dumped, :latitude, :longitude, :created_at, :updated_at
json.url post_url(post, format: :json)
