class Ride

    attr_accessor :driver, :passenger, :distance

    @@all = []

    @@total = 0.0
    @@ride_count = 0

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance

        @@all << self

        @@total += distance
        @@ride_count += 1
    end

    def passenger
        @passenger
    end

    def driver
        @driver
    end

    def distance
        @distance
    end

    def average_distance
        @@total / @@ride_count
    end

    def all
        @@all
    end

    def self.all
        @@all
    end
    
end
