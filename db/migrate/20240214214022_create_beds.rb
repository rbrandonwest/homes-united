class CreateBeds < ActiveRecord::Migration[7.1]
  def change
    create_table :beds do |t|
      t.integer :room_id
      t.string :bedsize
      t.integer :bed_tag_id

      t.timestamps
    end
  end
end
