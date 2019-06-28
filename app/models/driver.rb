
class Driver
  attr_accessor :passenger, :ride
  attr_reader :name

  @@drivers = []

  def initiazlize(name)
    @name = name
    @@drivers << self
  end

  def passenger_names
    passenger_names = []
    Ride.all.each do |ride|
      if ride.passenger == self.passenger
        passenger_names << ride.passenger.name
      end
    end
    passenger_names.uniq
  end


  def rides
    Ride.all.select do |ride|
      ride.driver == self.driver
    end
  end

  def self.all
    @@drivers
  end

  def self.mileage_cap(distance)
    @@all.select do |driver|
      driver.ride.distance > distance
    end
  end
end


# A Driver should be initialized with a name as a string.
#
# Driver#name
# Returns the driver's name
# Driver#passenger_names
# Returns an array of all Passengers' names a driver has driven. The names should be unique (no repeats).
# Driver#rides
# Returns an array of all Rides a driver has made
# Driver.all
# Returns an array of all Drivers
# Driver.mileage_cap(distance)
# Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
