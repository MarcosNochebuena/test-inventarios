class Sale < ApplicationRecord
  belongs_to :vehicle
  belongs_to :user
  validates :date, :vehicle_id, :price, :user_id, presence: true

  after_create :decrease_vehicle_stock

  private

  def decrease_vehicle_stock
    vehicle.update(stock: vehicle.stock - 1)
  end
end
