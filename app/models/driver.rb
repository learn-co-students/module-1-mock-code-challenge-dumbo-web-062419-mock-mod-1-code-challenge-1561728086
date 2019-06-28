class Driver
    attr_accessor :ride
    attr_reader :name

@@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def passenger_names

    end


    def rides
        
    end

    def self.mileage_cap(distance)
        if driver_distance > distance
            return self
        end
    end




end
