json.array!(@events) do |event|
  json.extract! event, :id, :name, :position, :time, :details, :place, :line2
  json.url event_url(event, format: :json)
end
