json.array!(@locations) do |location|
  json.extract! location, :name, :description, :latitude, :longitude
  json.url location_url(location, format: :json)
end
