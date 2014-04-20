json.array!(@periods) do |period|
  json.extract! period, :id, :name, :start, :end, :timeline_id
  json.url period_url(period, format: :json)
end
