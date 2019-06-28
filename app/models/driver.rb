class Driver

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
    end

    def new_ride(passenger, distance)
        Ride.new(self, passenger, distance.to_f)
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    def passenger_names
        Passenger.all.select {|passenger| passenger.driver == self}
    end

    def self.milage_cap(distance)
        
    end
end


