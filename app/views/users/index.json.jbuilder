json.array!(@users) do |user|
  json.extract! user, :id, :email, :admin, :firstname, :lastname, :hinhanh, :ngaysinh
  json.url user_url(user, format: :json)
end
