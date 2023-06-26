class Vehicle < ApplicationRecord
    has_and_belongs_to_many :dealerships
    has_many :sales

    enum condition: { new_vehicle: 'new', used_vehicle: 'used' }

    validates :make, :model, :price, :stock, :dealership_ids, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 10000 }

    def self.depreciate_prices
        where("created_at < ?", 30.days.ago).find_each do |vehicle|
          vehicle.update(price: vehicle.price * 0.98)
        end
    end
end
