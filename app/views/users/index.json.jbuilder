json.array!(@users) do |user|
  json.extract! user, :username, :password, :first_name, :last_name, :telephone, :email
  json.url user_url(user, format: :json)
end
