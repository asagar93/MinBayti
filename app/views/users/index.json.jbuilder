json.array!(@users) do |user|
  json.extract! user, :id, :fname, :lname, :type, :points, :nooforders, :email, :dob, :gender, :phone, :address, :tokens
  json.url user_url(user, format: :json)
end
