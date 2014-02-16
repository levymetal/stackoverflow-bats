json.array!(@bats) do |bat|
  json.extract! bat, :id, :name, :manufacturer_id
  json.url bat_url(bat, format: :json)
end
