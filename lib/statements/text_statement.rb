require 'statements/statement'

class TextStatement < Statement
  def self.value(customer)
    result = "Rental Record for #{customer.name}\n"
    customer.rentals.each do |rental|
      
      #show figures for this rental
      result += "\t#{rental.movie.title}\t#{rental.charge}\n"
    end
    
    #add footer lines
    result += "Amount owed is #{customer.total_charge}\n"
    result += "You earned #{customer.total_frequent_renter_points} frequent renter points"
    result
  end  
end