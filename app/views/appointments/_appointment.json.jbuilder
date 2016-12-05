json.extract! appointment, :id, :day_id, :slot, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)