json.array!(@chitiettrandaus) do |chitiettrandau|
  json.extract! chitiettrandau, :id, :trandau_id
  json.url chitiettrandau_url(chitiettrandau, format: :json)
end
