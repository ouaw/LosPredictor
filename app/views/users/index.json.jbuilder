json.array!(@users) do |user|
  json.extract! user, :username, :password, :firstname, :lastname, :tel, :email
  json.url user_url(user, format: :json)
end
