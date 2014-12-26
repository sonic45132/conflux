json.array!(@users) do |user|
  json.extract! user, :id, :name, :password_digst, :email, :status
  json.url user_url(user, format: :json)
end
