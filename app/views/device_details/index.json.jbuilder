json.array!(@device_details) do |device_detail|
  json.extract! device_detail, :macAddress, :ipAddress, :osVersion, :function
  json.url device_detail_url(device_detail, format: :json)
end
