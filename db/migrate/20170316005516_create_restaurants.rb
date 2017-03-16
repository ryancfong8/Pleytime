class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :address, null: false
      t.string :hours, null: false
      t.string :price, null: false
      t.float :lat, null: false
      t.float :long, null: false 
      t.timestamps
    end
  end
end
