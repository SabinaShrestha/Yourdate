json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :post
  json.url tweet_url(tweet, format: :json)
end
