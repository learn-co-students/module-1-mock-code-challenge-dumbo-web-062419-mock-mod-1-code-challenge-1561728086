class Ride

    @@all = []
    
    attr_accessor :driver, :passenger, :distance
    def initialize(driver,passenger, distance)
        @driver = driver
        @passenger = passenger
        @def = distance
        @@all << self
    end

    def self.all
        @@all
    end
end
