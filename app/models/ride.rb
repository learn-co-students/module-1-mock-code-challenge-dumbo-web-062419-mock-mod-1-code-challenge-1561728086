class Ride

    attr_accessor :driver, :passenger

@@all = []

    def initialize(driver, passenger)
        @driver = driver
        @passenger = passenger
        @@all << self
    end

    def 

    def distance(mileage)
        return mileage.to_f
    end

    def self.average_distance
        self.all.select do|info|
            if info == distance
                return info.average
            end
        end
    end



end
