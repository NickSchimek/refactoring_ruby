class Statement
  def self.value(customer)
    result = header_string(customer)
    customer.rentals.each do |rental|
      
      #show figures for this rental
      result << each_rental_string(rental)
    end
    
    #add footer lines
    result << footer_string(customer)
  end
end