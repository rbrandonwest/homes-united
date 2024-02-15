class AddCityToHouses < ActiveRecord::Migration[7.1]
  def change
    add_column :houses, :city, :string
  end
end
