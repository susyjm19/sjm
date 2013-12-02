json.array!(@room_issues) do |room_issue|
  json.extract! room_issue, :activityDate
  json.url room_issue_url(room_issue, format: :json)
end
