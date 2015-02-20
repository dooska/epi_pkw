json.array!(@voivodeships) do |voivodeship|
  json.extract! voivodeship, :id, :name, :electoral_mandates
  json.url voivodeship_url(voivodeship, format: :json)
end
