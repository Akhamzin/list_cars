json.array!(@cars) do |car|
  json.extract! car, :id, :name, :number, :pts, :pts_date
  json.url car_url(car, format: :json)
end
