class Ride
    attr_reader :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f

        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        # add the distance of all the rides all up
        sum = 0
        @@all.each do |ride|
            sum += ride.distance
        end
        sum / @@all.length
        # divide by size of all of the instances of rides
    end
end