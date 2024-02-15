class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :first_name
      t.string :last_name
      t.datetime :dob
      t.string :phone
      t.string :email
      t.integer :user_type_id

      t.timestamps
    end
  end
end
