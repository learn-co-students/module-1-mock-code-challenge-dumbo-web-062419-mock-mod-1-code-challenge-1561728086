
class Passenger
    attr_accessor :name, :driver

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        #array of ride instances the person has been on
        if Ride.passenger == self #problems here
            Ride.all.select{|ride| ride}
        end
    end

    def drivers
        #array of drivers they have had
    end

    def total_distance
        #returns float that displays total distace they have traveled
    end

    def self.all
        @@all
    end

    def self.premium_members
        #array of passengers how have traveled over 100 miles
    end


end

