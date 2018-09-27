require 'statements/text_statement'
require 'statements/html_statement'

class Customer
  attr_reader :name, :rentals
  
  def initialize name
    @name = name
    @rentals = []
  end
  
  def add_rental arg
    @rentals << arg
  end
  
  def statement
    TextStatement.value(self)
  end
  
  def html_statement
    HtmlStatement.value(self)
  end
  
  def total_charge
    @rentals.inject(0) { |sum, rental| sum + rental.charge }
  end
  
  def total_frequent_renter_points
    @rentals.inject(0) { |sum, rental| sum + rental.frequent_renter_points }
  end
  
end