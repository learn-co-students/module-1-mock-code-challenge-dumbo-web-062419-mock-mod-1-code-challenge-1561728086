class Passenger

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_ride(driver, distance)
        Ride.new(driver, self, distance.to_f)
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select{|ride| ride.passenger == self}
    end

    def drivers
        Driver.all.select{|driver| driver.passenger == self}
    end
end


