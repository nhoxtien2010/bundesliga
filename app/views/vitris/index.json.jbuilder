json.array!(@vitris) do |vitri|
  json.extract! vitri, :id, :tenvitri, :phamvihd
  json.url vitri_url(vitri, format: :json)
end
