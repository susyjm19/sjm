json.array!(@panel_brands) do |panel_brand|
  json.extract! panel_brand, :name
  json.url panel_brand_url(panel_brand, format: :json)
end
