json.array!(@offices) do |office|
  json.extract! office, :name
  json.url office_url(office, format: :json)
end
