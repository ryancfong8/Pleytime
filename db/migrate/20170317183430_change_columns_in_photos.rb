class ChangeColumnsInPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :user_id, :integer, null: false 
  end

  def self.up
    change_column :photos, :review_id, :integer
  end

  def self.down
    change_column :photos, :review_id, :integer, null: false
  end
end
