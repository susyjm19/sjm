json.array!(@port_panels) do |port_panel|
  json.extract! port_panel, 
  json.url port_panel_url(port_panel, format: :json)
end
