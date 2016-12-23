json.extract! plan, :id, :plan_name, :plan_descrip, :plan_info, :plan_price, :plan_image, :created_at, :updated_at
json.url plan_url(plan, format: :json)