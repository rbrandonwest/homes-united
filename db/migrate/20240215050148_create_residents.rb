class CreateResidents < ActiveRecord::Migration[7.1]
  def change
    create_table :residents do |t|
      t.string :fullname
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.datetime :dob
      t.integer :bed_id

      t.timestamps
    end
  end
end
