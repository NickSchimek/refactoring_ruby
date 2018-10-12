require 'text_statement'
require 'html_statement'

class Statement
  def value(customer)
    result = header_string(customer)
    customer.rentals.each do |rental|
      result <<  each_rental_string(rental)
    end
    result << footer_string(customer)
  end
end