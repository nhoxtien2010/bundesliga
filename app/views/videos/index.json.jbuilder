json.array!(@videos) do |video|
  json.extract! video, :id, :tieude, :nguon, :tuade, :video, :noidung
  json.url video_url(video, format: :json)
end
