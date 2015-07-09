json.array!(@baiviets) do |baiviet|
  json.extract! baiviet, :id, :tieude, :noidung, :hinhanh, :hinhanh1, :hinhanh2, :doibong_id, :giaidau, :loaibaiviet
  json.url baiviet_url(baiviet, format: :json)
end
