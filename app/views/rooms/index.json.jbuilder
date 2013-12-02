json.array!(@rooms) do |room|
  json.extract! room, :name, :type
  json.url room_url(room, format: :json)
end
