class AddCityAndPhoneToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :city_params, :string
    add_column :restaurants, :phone, :string
  end
end
