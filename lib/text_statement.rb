module TextStatement
  def header_string(customer)
    "Rental Record for #{customer.name}\n"
  end
  
  def each_rental_string(rental)
    "\t#{rental.movie.title}\t#{rental.charge}\n"
  end
  
  def footer_string(customer)
    "Amount owed is #{customer.total_charge}\n" +
    "You earned #{customer.total_frequent_renter_points} frequent renter points"
  end
end