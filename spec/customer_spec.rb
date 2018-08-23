require 'customer'
require 'movie'
require 'rental'

RSpec.describe Customer do
  
  before(:each) do
    @customer = Customer.new("Nick")
  end
  
  it "prints statement when customer has no rentals" do
    expect(@customer.statement).to eq("Rental Record for Nick\nAmount owed is 0\nYou earned 0 frequent renter points")
  end
  
  it "prints statement when customer has one new release" do
    new_release = Movie.new "Terminator", Movie::NEW_RELEASE
    rental = Rental.new new_release, 1
    @customer.add_rental rental
    expect(@customer.statement).to eq("Rental Record for Nick\n\tTerminator\t3\nAmount owed is 3\nYou earned 1 frequent renter points")
  end
  
  it "prints statement when customer has one new release with 2 day rental" do
    new_release = Movie.new "Terminator", Movie::NEW_RELEASE
    rental = Rental.new new_release, 2
    @customer.add_rental rental
    expect(@customer.statement).to eq("Rental Record for Nick\n\tTerminator\t6\nAmount owed is 6\nYou earned 2 frequent renter points")
  end  
  
  it "prints statement when customer has one regular with no rentals" do
    new_regular = Movie.new "Terminator", Movie::REGULAR
    rental = Rental.new new_regular, 1
    @customer.add_rental rental
    expect(@customer.statement).to eq("Rental Record for Nick\n\tTerminator\t2\nAmount owed is 2\nYou earned 1 frequent renter points")
  end  
  
  it "prints statement when customer has one regular release for more than 2 days" do
    regular = Movie.new "Terminator", Movie::REGULAR
    rental = Rental.new regular, 3
    @customer.add_rental rental
    expect(@customer.statement).to eq("Rental Record for Nick\n\tTerminator\t3.5\nAmount owed is 3.5\nYou earned 1 frequent renter points")
  end  

  it "prints statement when customer has one childrens movie rented for one day" do
    children = Movie.new "Terminator", Movie::CHILDRENS
    rental = Rental.new children, 1
    @customer.add_rental rental
    expect(@customer.statement).to eq("Rental Record for Nick\n\tTerminator\t1.5\nAmount owed is 1.5\nYou earned 1 frequent renter points")
  end  
  
  it "prints statement when customer has one childrens movie rented for more than three days" do
    children = Movie.new "Terminator", Movie::CHILDRENS
    rental = Rental.new children, 4
    @customer.add_rental rental
    expect(@customer.statement).to eq("Rental Record for Nick\n\tTerminator\t3.0\nAmount owed is 3.0\nYou earned 1 frequent renter points")
  end  
end