json.array!(@events) do |event|
  json.extract! event, :name, :activityDate
  json.url event_url(event, format: :json)
end
