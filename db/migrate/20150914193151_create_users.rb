class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :facebook_id
      t.string :name
      t.string :location
      t.string :photo_url
    end
  end
end
