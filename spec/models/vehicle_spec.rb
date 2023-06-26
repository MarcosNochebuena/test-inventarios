require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "is not valid without a make" do
    vehicle = Vehicle.new(make: nil, model: "Camry", year: 2022)
    expect(vehicle).not_to be_valid
  end
  it "is not valid without a price" do
    vehicle = Vehicle.new(make: "BMW", model: "Camry", year: 2022, price: nil)
    expect(vehicle).not_to be_valid
  end
  it "is not valid if price is negative" do
    vehicle = Vehicle.new(make: "BMW", model: "Camry", year: 2022, price: -1)
    expect(vehicle).not_to be_valid
  end
  it "is not valid if price is a string" do
    vehicle = Vehicle.new(make: "BMW", model: "Camry", year: 2022, price: "123456")
    expect(vehicle).not_to be_valid
  end
end
