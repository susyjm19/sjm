json.array!(@oids) do |oid|
  json.extract! oid, :oid, :name, :message, :priorityLevel
  json.url oid_url(oid, format: :json)
end
