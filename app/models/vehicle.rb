class Vehicle < ApplicationRecord
    has_and_belongs_to_many :dealerships
    has_many :sales

    enum condition: { new_vehicle: 'new', used_vehicle: 'used' }
end
