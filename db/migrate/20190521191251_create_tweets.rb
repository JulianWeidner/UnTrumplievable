class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :source
      t.text :body
      t.string :created_at
      t.integer :retweets 
      t.integer :favorites
      t.integer :unbelievables
      t.timestamps
    end
  end
end
