json.array!(@expos) do |expo|
  json.extract! expo, :id, :name, :content, :opening_date, :closing_date, :is_online
  json.url expo_url(expo, format: :json)
end
