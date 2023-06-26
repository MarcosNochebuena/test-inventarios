require 'rails_helper'

RSpec.describe Sale, type: :model do
 # pending "add some examples to (or delete) #{__FILE__}"
 it "is not valid without a date" do
  sale = Sale.new(date: nil, vehicle_id: 1, price: 123524, user_id: 1)
  expect(sale).not_to be_valid
end
end
