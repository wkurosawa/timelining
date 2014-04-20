json.array!(@timelines) do |timeline|
  json.extract! timeline, :id, :name, :user_id
  json.url timeline_url(timeline, format: :json)
end
