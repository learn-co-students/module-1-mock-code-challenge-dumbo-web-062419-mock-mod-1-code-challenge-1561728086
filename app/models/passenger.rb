class Passenger 
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end 

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
        rides.map {|rides| rides.driver}
    end

    def total_distance
        total = 0.0
        rides.each do |rides|
        total += rides.distance
        end
        return total
    end

   def  Passenger.all 
        @@all
    end

    def Passenger.premium_members
        @@all.select {|passengers| passengers.total_distance > 100}
    end

end 
