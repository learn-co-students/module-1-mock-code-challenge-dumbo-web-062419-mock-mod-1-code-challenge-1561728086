
class Ride
    attr_accessor :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end


    def self.average_distance
        #returns average distance of all rides
    end

    def self.all
        @@all
    end
end
