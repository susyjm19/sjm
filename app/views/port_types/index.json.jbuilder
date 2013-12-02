json.array!(@port_types) do |port_type|
  json.extract! port_type, :name, :type
  json.url port_type_url(port_type, format: :json)
end
