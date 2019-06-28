class Passenger
    attr_reader :name, :ride

    def initialize(name)
        @name = name
    end

    def rides
        Ride.all.select {|rides| rides = self}
    end

    def drivers
        Ride.all.map {
            |drivers| drivers.driver = passenger.self}
    end
end
