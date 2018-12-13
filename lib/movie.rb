require 'regular_price'
require 'new_release_price'
require 'childrens_price'

class Movie
    
  attr_reader :title
  attr_writer :price
  
  def initialize(title, price_code)
    @title, @price = title, price_code
  end
  
  
  def charge(days_rented)
    @price.charge(days_rented)
  end
  
  def frequent_renter_points(days_rented)
    @price.frequent_renter_points(days_rented)
  end
end
