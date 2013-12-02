json.array!(@panels) do |panel|
  json.extract! panel, :description
  json.url panel_url(panel, format: :json)
end
