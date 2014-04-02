json.array!(@users) do |user|
  json.extract! user, :id, :company_id, :username, :name, :surname, :gender
  json.url user_url(user, format: :json)
end
