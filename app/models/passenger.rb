class Passenger
    attr_reader :name, :rides, :driver

    @@all = []
    @@premium_members = []
    @@rides = []

    def initialize(name)
        @name = name
        @@rides << self
    end

    def rides
        @@rides
    end

    def drivers

    end

    def total_distance

    end
end
