class AddUserRefToAutomobile < ActiveRecord::Migration[5.2]
  def change
    add_reference :automobiles, :user, foreign_key: true
  end
end
