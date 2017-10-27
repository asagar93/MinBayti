json.array!(@orderlines) do |orderline|
  json.extract! orderline, :id, :quantity, :cost, :comment
  json.url orderline_url(orderline, format: :json)
end
