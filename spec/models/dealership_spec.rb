require 'rails_helper'

RSpec.describe Dealership, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "is not valid without a name" do
    dealership = Dealership.new(name: nil, address: "123 Main Street, Anytown,  Examplestate, 12345, Exampleland", phone: 1259874596)
    expect(dealership).not_to be_valid
  end

  it "is not valid without a address" do
    dealership = Dealership.new(name: "ExampleName", address: nil, phone: 1259874596)
    expect(dealership).not_to be_valid
  end

  it "is not valid without a phone" do
    dealership = Dealership.new(name: "ExampleName", address: "123 Main Street, Anytown,  Examplestate, 12345, Exampleland", phone: nil)
    expect(dealership).not_to be_valid
  end

  it "is not valid if the phone does not have 10 digits" do
    dealership = Dealership.new(name: "ExampleName", address: "123 Main Street, Anytown,  Examplestate, 12345, Exampleland", phone: 12345)
    expect(dealership).not_to be_valid
  end
end
