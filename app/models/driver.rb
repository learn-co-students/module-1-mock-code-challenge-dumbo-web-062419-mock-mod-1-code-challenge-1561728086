
class Driver
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name =name
        @@all << self 
    end

    def passenger_names
        #array of passengers driver has had, no repeats
        if Passenger.driver == self
            Passenger.all.select{|passenger| passenger.name}
        end
    end

    def rides
        #returns an array of all the rides this driver has had
        Rides.all.select{|ride| ride} #uninish constant
        
    end

    def self.all 
        @@all 
    end

    def self.mileage_cap(distance)
        #takes an argument of float and returns array of all drivers who have dirven over the mileage
    end

end

