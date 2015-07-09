json.array!(@trandaus) do |trandau|
  json.extract! trandau, :id, :banthangdoinha, :banthangdoikhach, :doinha_id, :doikhach_id, :thoigian, :vongdau_id, :sanvandong_id
  json.url trandau_url(trandau, format: :json)
end
