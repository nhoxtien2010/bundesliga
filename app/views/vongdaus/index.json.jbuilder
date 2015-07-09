json.array!(@vongdaus) do |vongdau|
  json.extract! vongdau, :id, :stt, :sotrandathidau, :thoigianbatdau, :thoigianketthuc
  json.url vongdau_url(vongdau, format: :json)
end
