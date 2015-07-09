json.array!(@cauthus) do |cauthu|
  json.extract! cauthu, :id, :ten, :tuoi, :quoctich, :chieucao, :cannang, :vitri_id, :doibong_id
  json.url cauthu_url(cauthu, format: :json)
end
