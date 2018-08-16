require 'customer'
require 'movie'
require 'rental'

RSpec.describe Customer do

  it "creates a customer" do
    customer = Customer.new "Cess"
    expect(customer.name).to eq("Cess")
  end
  
  it "prints statement when customer has no rentals" do
    customer = Customer.new "Nick"
    expect(customer.statement).to eq("Rental Record for Nick\nAmount owed is 0\nYou earned 0 frequent renter points")
  end
  
  it "prints statement when customer has one new release" do
    customer = Customer.new "New release"
    new_release = Movie.new "Terminator", Movie::NEW_RELEASE
    rental = Rental.new new_release, 1
    customer.add_rental rental
    expect(customer.statement).to eq("Rental Record for New release\n\tTerminator\t3\nAmount owed is 3\nYou earned 1 frequent renter points")
  end
  
  it "prints statement when customer has one new release" do
    customer = Customer.new "New release"
    new_release = Movie.new "Terminator", Movie::NEW_RELEASE
    rental = Rental.new new_release, 2
    customer.add_rental rental
    expect(customer.statement).to eq("Rental Record for New release\n\tTerminator\t6\nAmount owed is 6\nYou earned 2 frequent renter points")
  end  
end