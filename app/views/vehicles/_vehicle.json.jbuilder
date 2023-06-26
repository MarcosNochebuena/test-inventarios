json.extract! vehicle, :id, :make, :model, :year, :type, :price, :stock, :condition, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
