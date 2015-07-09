json.array!(@thephats) do |thephat|
  json.extract! thephat, :id, :loaithe, :ghichu
  json.url thephat_url(thephat, format: :json)
end
