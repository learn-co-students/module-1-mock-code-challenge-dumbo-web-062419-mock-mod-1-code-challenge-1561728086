class Driver

# Driver#name
# Returns the driver's name
# Driver#passenger_names
# Returns an array of all Passengers' names a driver has driven. The names should be unique (no repeats).
# Driver#rides
# Returns an array of all Rides a driver has made
# Driver.all
# Returns an array of all Drivers
# Driver.mileage_cap(distance)
# Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage

    @@all = []
    @rides = []

    def initialize(name)
        @name = name
        @@all << name
    end

    def passenger_names
    end

    def add_ride(ride)
        @rides << ride
    end

    def rides
        @rides
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
    end

end