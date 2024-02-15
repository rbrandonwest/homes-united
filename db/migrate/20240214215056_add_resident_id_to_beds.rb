class AddResidentIdToBeds < ActiveRecord::Migration[7.1]
  def change
    add_column :beds, :resident_id, :string
  end
end
