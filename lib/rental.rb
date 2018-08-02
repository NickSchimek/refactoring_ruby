class Rental
  attr_reader :movie, :days_rented

  def intitialize (movie, days_rented)
    @movie, @days_rented = movie, days_rented
  end
end