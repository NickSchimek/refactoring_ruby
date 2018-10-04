require 'statements/statement'

class HtmlStatement < Statement
  def self.header_string(customer)
    "<h1>Rental Record for <em>#{customer.name}</em></h1><\p>\n"
  end
  
  def self.each_rental_string(rental)
    "\t#{rental.movie.title}\t#{rental.charge}\n"
  end
  
  def self.footer_string(customer)
    "<p>You owe <em>#{customer.total_charge}</em><\p>\n"
    "<p>On this rental you earned +
    "<em>#{customer.total_frequent_renter_points}</em>" +
    "frequent renter points</p>"
  end
end