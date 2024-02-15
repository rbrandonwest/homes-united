class AddGenderToResidents < ActiveRecord::Migration[7.1]
  def change
    add_column :residents, :gender, :string
  end
end
