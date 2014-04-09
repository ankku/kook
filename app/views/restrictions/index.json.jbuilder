json.array!(@restrictions) do |restriction|
  json.extract! restriction, :id, :no_red_meat, :ovo_lacto_vegetarian, :vegetarian, :vegan, :glutein_free, :lactose_free
  json.url restriction_url(restriction, format: :json)
end
