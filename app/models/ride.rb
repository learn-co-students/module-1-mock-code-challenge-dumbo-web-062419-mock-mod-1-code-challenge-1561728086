class Ride
    attr_accessor :driver, :passenger, :distance
    
    @@rides = []
    
    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@rides << self
    end

    def self.average_distance
        
    end

end

