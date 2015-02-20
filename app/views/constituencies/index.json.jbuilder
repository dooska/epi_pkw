json.array!(@constituencies) do |constituency|
  json.extract! constituency, :id, :name, :voivodeship_id, :voters, :used_ballots, :invalid_no_choise, :invalid_more_choises, :invalid_other
  json.url constituency_url(constituency, format: :json)
end
