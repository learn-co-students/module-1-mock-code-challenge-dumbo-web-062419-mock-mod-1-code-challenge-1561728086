class Ride

# Ride#passenger
# Returns the Passenger object for that ride
# Ride#driver
# Returns the Driver object for that ride
# Ride#distance
# Returns the distance of the ride
# Ride.average_distance
# Returns the average distance across ALL rides

    attr_accessor :rides
    @rides = 0
    @total_distance = 0

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance

        #@rides+=1
        #@total_distance += distance
        #driver.add_ride("lol")
    end

    def passenger
        @passenger
    end

    def driver
        @driver
    end

    def distance
        @@distance
    end

    def self.average_distance
        total_distance/rides
    end

end