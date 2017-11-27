json.array!(@orders) do |order|
  json.extract! order, :id, :iduser, :payment_method, :date_created, :date_delivered, :date_paid
  json.url order_url(order, format: :json)
end
