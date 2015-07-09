json.array!(@huanluyenviens) do |huanluyenvien|
  json.extract! huanluyenvien, :id, :ten, :tuoi, :quoctich
  json.url huanluyenvien_url(huanluyenvien, format: :json)
end
