json.array!(@bangxephangs) do |bangxephang|
  json.extract! bangxephang, :id, :vondau_id
  json.url bangxephang_url(bangxephang, format: :json)
end
