class Ride

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f
        @@all << self
    end

    def driver
        @driver
    end

    def passenger
        @passenger
    end

    def self.all
        @@all
    end
    
    def distance
        @distance
    end

    # def self.average_distance
    #     @@all.map{}
    # end


    
end



