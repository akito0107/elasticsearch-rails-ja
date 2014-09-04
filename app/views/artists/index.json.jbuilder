json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :introduction
  json.url artist_url(artist, format: :json)
end
