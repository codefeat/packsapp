json.extract! order, :id, :order_userid, :order_packnum, :order_size, :order_description, :order_qty, :order_cost, :created_at, :updated_at
json.url order_url(order, format: :json)