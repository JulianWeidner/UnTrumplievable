require 'json'

files = ["2009.json",
         "2010.json",
         "2011.json", 
         "2012.json", 
         "2013.json", 
         "2014.json", 
         "2015.json", 
         "2016.json", 
         "2017.json"]

files.each do |f_path|
  file = File.open(f_path)
  json_data = JSON.load(file)

  tweets.each do |tweet|



    create_table "tweets", force: :cascade do |t|
      t.string "source"
      t.text "body"
      t.datetime "created_at", null: false
      t.integer "retweets"
      t.integer "favorites"
      t.integer "unbelievables"
      t.datetime "updated_at", null: false
    end

end
