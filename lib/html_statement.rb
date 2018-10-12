module HtmlStatement
  def each_rental_string(customer)
    "#{rental.movie.title}: \t#{rental.charge}<BR/>\n"
  end
  
  def header_string(customer)
    "<H1>Rentals for <EM>#{customer.name}</EM></H1><P>\n"
  end
  
  def footer_string(customer)
    "<P>You owe <EM>#{customer.total_charge}</EM></P>\n" +
    "On this rental you earned <EM>\ #{customer.total_frequent_renter_points}</EM> frequent renter points</P>"
  end
end