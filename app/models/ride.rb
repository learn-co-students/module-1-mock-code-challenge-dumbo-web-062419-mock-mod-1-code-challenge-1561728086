class Ride
    attr_reader :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance

        @@all << self
    end

    def self.average_distance
        ## add up all the ride distances
        total_distance = 0
        @@all.each do |ride|
            total_distance += ride.distance
        end
        ## divide by number of rides
        total_distance / @@all.length
    end

    def self.all
        @@all
    end

end
