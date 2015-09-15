class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :name
      t.integer :oauth_token
      t.string :location
      t.string :photo_url
    end
  end
end
