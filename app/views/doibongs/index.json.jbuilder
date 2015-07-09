json.array!(@doibongs) do |doibong|
  json.extract! doibong, :id, :ten, :diachi, :dienthoai, :fax, :website, :facebook, :ngaytl, :mauao, :bacsy, :nguoidaidientruyenthong, :huanluyenvien_id
  json.url doibong_url(doibong, format: :json)
end
