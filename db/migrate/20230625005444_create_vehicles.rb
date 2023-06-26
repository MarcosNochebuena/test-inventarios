class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :type
      t.decimal :price
      t.integer :stock
      t.string :condition

      t.timestamps
    end
  end
end
