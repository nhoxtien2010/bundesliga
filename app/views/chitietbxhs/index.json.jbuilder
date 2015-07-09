json.array!(@chitietbxhs) do |chitietbxh|
  json.extract! chitietbxh, :id, :thuhang, :sotranthidau, :diem, :hieuso, :tongsobanthang, :sotranthang, :sotranghoa, :sotrangthua, :bangxephang_id, :doibong_id, :lenxuonghang_id
  json.url chitietbxh_url(chitietbxh, format: :json)
end
