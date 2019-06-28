class Passenger

    attr_reader :name, :ride

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def name
        @name
    end

    def all
        @@all
    end

    def rides
        Ride.all.select{ |ride| ride.passenger == self }
    end
    
end
