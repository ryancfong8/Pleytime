class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.integer :restaurant_id, null: false
      t.integer :review_id, null: false
      t.string :url, null: false

      t.timestamps
    end
  end
end
