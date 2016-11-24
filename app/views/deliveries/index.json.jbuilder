json.array!(@deliveries) do |delivery|
  json.extract! delivery, :id, :name, :address, :phone, :website
  json.url delivery_url(delivery, format: :json)
end
