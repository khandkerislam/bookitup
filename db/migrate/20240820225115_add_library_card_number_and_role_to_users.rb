class AddLibraryCardNumberAndRoleToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :role, :integer
    add_column :users, :card_number, :string
  end
end
