json.array!(@foods) do |food|
  json.extract! food, :id, :idcategory, :name
  json.url food_url(food, format: :json)
end
