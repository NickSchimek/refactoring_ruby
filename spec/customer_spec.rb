require 'customer'

RSpec.describe Customer do

  it "creates a customer" do
    customer = Customer.new "Cess"
    expect(customer.name).to eq("Cess")
  end
end