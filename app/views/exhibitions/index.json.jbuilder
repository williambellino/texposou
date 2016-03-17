json.array!(@exhibitions) do |exhibition|
  json.extract! exhibition, :id, :name, :description, :opening_at, :closing_at, :capacity, :artist, :place, :status
  json.url exhibition_url(exhibition, format: :json)
end
