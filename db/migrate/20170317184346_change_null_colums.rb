class ChangeNullColums < ActiveRecord::Migration[5.0]
  def change
    change_column :photos, :review_id, :integer, :null => true
  end
end
