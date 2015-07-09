json.array!(@banthangs) do |banthang|
  json.extract! banthang, :id, :thoigian, :cauthu_id, :chitiettrandau_id
  json.url banthang_url(banthang, format: :json)
end
