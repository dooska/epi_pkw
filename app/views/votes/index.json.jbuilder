json.array!(@votes) do |vote|
  json.extract! vote, :id, :committee_id, :constituency_id, :yes_vote
  json.url vote_url(vote, format: :json)
end
