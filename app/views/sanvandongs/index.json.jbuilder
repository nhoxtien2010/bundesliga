json.array!(@sanvandongs) do |sanvandong|
  json.extract! sanvandong, :id, :soghe, :diachi, :doibong_id, :hinhanh, :ten, :hinanh1, :hinhanh2, :thongtin, :chitietthongtin, :thanhlap, :ve
  json.url sanvandong_url(sanvandong, format: :json)
end
