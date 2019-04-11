json.extract! guest, :id, :g_username, :created_at, :updated_at
json.url guest_url(guest, format: :json)
