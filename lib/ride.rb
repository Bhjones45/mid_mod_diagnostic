class Ride
  attr_reader :name,
              :cost,
              :intensity,
              :passengers

  def initialize(name, cost, intensity)
    @name = name
    @cost = cost
    @intensity = intensity
    @passengers = []
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def percentage_adults
    adult_passengers = @passengers.select do |passenger|
      passenger.adult?
    end
    return ((adult_passengers.count.to_f / @passengers.count.to_f) * 100).round
  end
end
