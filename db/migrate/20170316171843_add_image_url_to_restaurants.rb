class AddImageUrlToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :image_url, :string, null: false
    add_index :users, :username 
  end
end
