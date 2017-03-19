class AddHoursToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :mon, :string
    add_column :restaurants, :tue, :string
    add_column :restaurants, :wed, :string
    add_column :restaurants, :thur, :string
    add_column :restaurants, :fri, :string
    add_column :restaurants, :sat, :string
    add_column :restaurants, :sun, :string
    remove_column :restaurants, :hours, :string
  end
end
