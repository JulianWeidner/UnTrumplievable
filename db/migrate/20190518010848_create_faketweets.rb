class CreateFaketweets < ActiveRecord::Migration[5.2]
  def change
    create_table :faketweets do |t|
      t.string :source
      t.text :body
      t.integer :retweets
      t.integer :favorites
      t.text :tweet_time
      t.integer :fake_outs
      t.references :faker
      t.timestamps
    end
  end
end
