require 'statements/statement'

class TextStatement < Statement
  def self.header_string(customer)
    "Rental Record for #{customer.name}\n"
  end
  
  def self.each_rental_string(rental)
    "\t#{rental.movie.title}\t#{rental.charge}\n"
  end
  
  def self.footer_string(customer)
    "Amount owed is #{customer.total_charge}\n" +
    "You earned #{customer.total_frequent_renter_points} frequent renter points"
  end
end