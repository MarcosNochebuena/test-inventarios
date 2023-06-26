class Dealership < ApplicationRecord
    has_and_belongs_to_many :vehicles
    validates :name, :address, presence: true
    validates :phone, presence: true, length: { is: 10 }
end
