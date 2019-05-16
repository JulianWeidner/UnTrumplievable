class Faker < ActiveRecord::Migration[5.2]
  def self.up
    create_table :fakers do |t|
      t.string :email, null: false
      t.string :crypted_password
      t.string :salt

      t.timestamps
    end

    add_index :fakers, :email
  end
end
