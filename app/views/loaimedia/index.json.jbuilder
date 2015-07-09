json.array!(@loaimedia) do |loaimedium|
  json.extract! loaimedium, :id, :ten
  json.url loaimedium_url(loaimedium, format: :json)
end
