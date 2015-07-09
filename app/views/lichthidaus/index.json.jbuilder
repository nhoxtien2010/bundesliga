json.array!(@lichthidaus) do |lichthidau|
  json.extract! lichthidau, :id, :muagiai, :vongdau_id
  json.url lichthidau_url(lichthidau, format: :json)
end
