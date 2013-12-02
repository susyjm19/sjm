json.array!(@hosts) do |host|
  json.extract! host, :name, :macAddress, :ipAddress
  json.url host_url(host, format: :json)
end
