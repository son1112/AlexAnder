json.array!(@logs) do |log|
  json.extract! log, :id, :title, :entry
  json.url log_url(log, format: :json)
end
