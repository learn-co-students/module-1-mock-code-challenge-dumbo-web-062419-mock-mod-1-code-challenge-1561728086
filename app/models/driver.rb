class Driver
  attr_accessor :name, :passenger_names, :rides

  @@all = []

  def initialize(name)
    @name = name
    @passenger_names = passenger_names
    @rides = rides

    @@all << self
  end

  def self.all
    @@all
  end

  def self.mileage_cap(distance)
    Ride.all.map do |ride|
      if ride.distance > distance
        ride.driver
      end
    end
  end

  def rides
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def passenger_names
    passengers = []
    Ride.all.select do |ride|
      if ride.driver == self
        passengers << ride.passenger.name
      end
    end
    passengers.uniq!
  end

end
