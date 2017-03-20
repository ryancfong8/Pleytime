class RemoveImageUrl < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :image_url, :string, null: false 
  end
end
