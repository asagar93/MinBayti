json.array!(@bussinesses) do |bussiness|
  json.extract! bussiness, :id, :iduser, :name, :ratings, :reviews, :photos, :instalink
  json.url bussiness_url(bussiness, format: :json)
end
