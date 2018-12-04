class AddProfileColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :drivingage, :integer
    add_column :users, :age, :string
    add_column :users, :about, :string
    add_column :users, :phone, :string
    add_column :users, :address, :string
  end
end
