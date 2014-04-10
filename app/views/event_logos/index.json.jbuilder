json.array!(@event_logos) do |event_logo|
  json.extract! event_logo, :id, :logo_id
  json.url event_logo_url(event_logo, format: :json)
end
