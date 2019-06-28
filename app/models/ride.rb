class Ride

    attr_reader :driver, :passenger, :distance

    @@pasengers = []
    @@drivers = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
    end

    def self.add_passenger(passenger)
        @@passengers << passenger
    end

    def self.add_driver(driver)
        @@passengers << passenger
    end

    def self.average_distance

    end
end
