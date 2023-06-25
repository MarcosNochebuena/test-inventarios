class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.date :date
      t.integer :vehicle_id
      t.decimal :price
      t.integer :user_id

      t.timestamps
    end
  end
end
