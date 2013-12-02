json.array!(@switch_ports) do |switch_port|
  json.extract! switch_port, :name, :macAddress, :status, :description
  json.url switch_port_url(switch_port, format: :json)
end
