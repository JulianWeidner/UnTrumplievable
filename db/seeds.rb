# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'



files = ["db/seed_data/2009.json", "db/seed_data/2010.json", "db/seed_data/2011.json", "db/seed_data/2012.json", "db/seed_data/2013.json", "db/seed_data/2014.json", "db/seed_data/2015.json", "db/seed_data/2016.json", "db/seed_data/2017.json"]

files.each do |f_path|
  file = File.open(f_path)
  json_data = JSON.load(file)

  json_data.each do |tweet|
    Tweet.create(
        source: tweet["source"],
        body: tweet["text"],
        created_at: tweet["created_at"],
        retweets: tweet["retweet_count"],
        favorites: tweet["favorite_count"],
        )
  end
end
