class Ride
  attr_accessor :name, :driver, :passenger, :distance
  @@all = []
    # A Ride should be initialized with a driver (as a Driver object), a passenger (as a Passenger object), and a distance (as a float i.e. 3.2). The distance refers to miles.

  def initialize(name, driver, passenger, distance)
    @name = name
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end

  def new_ride(driver, passenger, distance)
    ride = Ride.new(driver, passenger, distance)
  end 

  def passenger
    ride.passenger = self
  end
  # Returns the Passenger object for that ride

  def driver
    ride.driver = self
  end
  # Returns the Driver object for that ride

  def distance
    ride.distance = self
  end
  # Returns the distance of the ride

  def self.average_distance
  end
  # Returns the average distance across ALL rides
end
