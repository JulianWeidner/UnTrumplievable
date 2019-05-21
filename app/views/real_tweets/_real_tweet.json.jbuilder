json.extract! real_tweet, :id, :created_at, :updated_at
json.url real_tweet_url(real_tweet, format: :json)
