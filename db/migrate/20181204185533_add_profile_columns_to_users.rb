class AddProfileColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :driving_age, :integer
    add_column :users, :age, :string
    add_column :users, :about, :string
    add_column :users, :phone, :string
    add_column :users, :address, :string
  end
end
