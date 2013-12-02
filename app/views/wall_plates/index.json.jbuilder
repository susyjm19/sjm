json.array!(@wall_plates) do |wall_plate|
  json.extract! wall_plate, :number
  json.url wall_plate_url(wall_plate, format: :json)
end
