json.array!(@events) do |event|
  json.extract! event, :id, :title, :logo_id, :date, :starttime, :endtime, :location_city, :location_zip, :restrictions_id, :participants, :price, :short_description, :full_description
  json.url event_url(event, format: :json)
end
