class Passenger
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
       Ride.all.select { |ride| ride.passenger == self }
    end

    def drivers
        # what do I need to get all the drivers who drove me?
        rides.map { |ride| ride.driver }
    end

    def total_distance
        # this gets the total distance for ONE passenger
        total_distance = 0
        rides.each { |ride| total_distance += ride.distance }
        total_distance
    end

    def self.all
        @@all
    end

    def self.premium_members
        @@all.select do |passenger|
            passenger.total_distance > 100
        end
    end
end