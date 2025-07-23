json.extract! event_set, :id, :event_id, :artist_set_id, :position, :active, :created_at, :updated_at
json.url event_set_url(event_set, format: :json)
