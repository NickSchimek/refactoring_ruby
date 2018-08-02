class Movie
  REGULAR = 0
  NEW_RELEASE = 0
  CHILDRENS = 0
    
  attr_reader :title
  attr_accessor :price_code
    
  def initialize(title, price_code)
    @title, @price_code = title, price_code
  end
end