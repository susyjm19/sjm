json.array!(@vlans) do |vlan|
  json.extract! vlan, :name, :gateway, :netMask, :tag
  json.url vlan_url(vlan, format: :json)
end
