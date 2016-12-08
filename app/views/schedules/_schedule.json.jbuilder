json.extract! schedule, :id, :day, :slot_id, :delivery_id, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)