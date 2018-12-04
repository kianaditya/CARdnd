class CreateAutomobiles < ActiveRecord::Migration[5.2]
  def change
    create_table :automobiles do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.integer :price

      t.timestamps
    end
  end
end
