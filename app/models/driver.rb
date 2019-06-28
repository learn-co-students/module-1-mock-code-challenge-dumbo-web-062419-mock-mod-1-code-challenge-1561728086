class Driver

    attr_reader :name, :ride

    @@all = []

    @@total_distance = 0

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
        Ride.all.select{ |ride| ride.driver == self }
    end
    
end
