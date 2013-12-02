json.array!(@panel_models) do |panel_model|
  json.extract! panel_model, :name, :numberOfPort, :category
  json.url panel_model_url(panel_model, format: :json)
end
