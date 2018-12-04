class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :address
      t.integer :drivingAge
      t.integer :age 
      t.text :about
      t.string :telephone
      
      t.timestamps
    end
  end
end
