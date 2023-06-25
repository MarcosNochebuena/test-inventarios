class CreateVehiclesDealershipsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :vehicles, :dealerships do |t|
      t.index [:vehicle_id, :dealership_id]
      t.index [:dealership_id, :vehicle_id]
    end
  end
end
