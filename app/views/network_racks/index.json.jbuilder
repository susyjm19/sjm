json.array!(@network_racks) do |network_rack|
  json.extract! network_rack, :brand, :type
  json.url network_rack_url(network_rack, format: :json)
end
