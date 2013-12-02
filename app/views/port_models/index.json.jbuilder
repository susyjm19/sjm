json.array!(@port_models) do |port_model|
  json.extract! port_model, 
  json.url port_model_url(port_model, format: :json)
end
