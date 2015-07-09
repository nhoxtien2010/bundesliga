json.array!(@phamlois) do |phamloi|
  json.extract! phamloi, :id, :thoigian, :thephat_id, :cauthu_id, :chitiettrandau_id
  json.url phamloi_url(phamloi, format: :json)
end
