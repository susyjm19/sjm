json.array!(@issues) do |issue|
  json.extract! issue, :name, :description, :severity
  json.url issue_url(issue, format: :json)
end
