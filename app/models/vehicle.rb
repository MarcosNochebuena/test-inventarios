class Vehicle < ApplicationRecord
    belongs_to :dealership
    has_many :sales

    enum condition: { new_vehicle: 'new', used_vehicle: 'used' }
end
