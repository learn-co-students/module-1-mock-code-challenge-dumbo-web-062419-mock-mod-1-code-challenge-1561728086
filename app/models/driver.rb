class Driver
  attr_accessor :name, :passenger, :ride, :distance
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  # Returns an array of all Drivers

  def name(name)
    driver = Driver.new(self)
    # puts driver.name
  end
  # Returns the driver's name

  def passenger_names
    
  end
  # Returns an array of all Passengers' names a driver has driven. The names should be unique (no repeats).

  def rides
  end
  # Returns an array of all Rides a driver has made

  def self.mileage_cap(distance)

  end
  # Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage

end
