json.array!(@addresses) do |address|
  json.extract! address, :id, :type_of_address, :address, :state_id, :city_id
  json.url address_url(address, format: :json)
end
