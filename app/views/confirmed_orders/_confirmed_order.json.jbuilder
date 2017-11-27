json.extract! confirmed_order, :id, :user_id, :payment_method, :payment_status, :created_at, :updated_at
json.url confirmed_order_url(confirmed_order, format: :json)
