class CreateRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|
      t.integer :house_id
      t.integer :sqft

      t.timestamps
    end
  end
end
