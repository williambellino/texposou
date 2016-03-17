json.array!(@visits) do |visit|
  json.extract! visit, :id, :coming_at, :user, :exhibition
  json.url visit_url(visit, format: :json)
end
