json.array!(@oid_models) do |oid_model|
  json.extract! oid_model, 
  json.url oid_model_url(oid_model, format: :json)
end
