json.array!(@network_devices) do |network_device|
  json.extract! network_device, :brand, :type
  json.url network_device_url(network_device, format: :json)
end
