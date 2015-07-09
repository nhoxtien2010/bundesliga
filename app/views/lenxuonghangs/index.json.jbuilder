json.array!(@lenxuonghangs) do |lenxuonghang|
  json.extract! lenxuonghang, :id, :ten, :thongtin
  json.url lenxuonghang_url(lenxuonghang, format: :json)
end
