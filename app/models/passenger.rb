class Passenger

# Passenger#name
# Returns the name of the passenger
# Passenger#rides
# Returns an array of Ride instances that this person has been on
# Passenger#drivers
# Returns an array of Driver instances that this person has rode with
# Passenger#total_distance
# Returns the floating number that represents the total distance the passenger has travelled using the service
# Passenger.all
# Returns an array of all Passengers
# Passenger.premium_members
# Returns an array of all Passengers who have travelled over 100 miles in total with the service


    attr_reader :name

    @@all = []
    @@premium_members = []

    @rides = []
    @drivers = []
    @total_distance = 0


    def initialize(name)
        @name = name
        @@all << name
    end

    def name
        @name
    end

    def self.premium_members
    end

    def self.all
        @@all
    end

    def rides
        @rides
    end

    def drivers
        @drivers
    end

    def total_distance
        @total_distance
    end

    def self.premium_members
    end


end