class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :headline, null: false
      t.string :body, null: false
      t.integer :restaurant_id, null: false
      t.integer :user_id, null: false
      t.integer :rating, null: false 

      t.timestamps
    end
  end
end
