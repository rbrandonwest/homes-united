class CreateHouses < ActiveRecord::Migration[7.1]
  def change
    create_table :houses do |t|
      t.string :address
      t.integer :zip
      t.string :state
      t.integer :bedrooms
      t.integer :manager_id
      t.string :gender

      t.timestamps
    end
  end
end
