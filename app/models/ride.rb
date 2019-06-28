
class Ride
  attr_reader :driver, :passenger, :distance

  @@rides = []

  def initiazlize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@rides << self
  end

  def self.average_distance
    sum_distance = 0
    ride_count = 0
    @@rides.each do |ride|
      sum_distance += ride.distance
      ride_count += 1
    end

    sum_distance / ride_count
  end


end




# A Ride should be initialized with a driver (as a Driver object), a passenger (as a Passenger object), and a distance (as a float i.e. 3.2). The distance refers to miles.
#
# # Ride#passenger
# # Returns the Passenger object for that ride
# # Ride#driver
# # Returns the Driver object for that ride
# # Ride#distance
# Returns the distance of the ride
# Ride.average_distance
# Returns the average distance across ALL rides
