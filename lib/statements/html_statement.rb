require 'statements/statement'

class HtmlStatement < Statement
  def self.value(customer)
    result = "<h1>Rental Record for <em>#{customer.name}</em></h1><\p>\n"
    customer.rentals.each do |rental|
      
      #show figures for this rental
      result += "\t#{rental.movie.title}\t#{rental.charge}\n"
    end
    
    #add footer lines
    result += "<p>You owe <em>#{customer.total_charge}</em><\p>\n"
    result += "<p>On this rental you earned +
                "<em>#{customer.total_frequent_renter_points}</em>" +
                "frequent renter points</p>"
    result
  end
end