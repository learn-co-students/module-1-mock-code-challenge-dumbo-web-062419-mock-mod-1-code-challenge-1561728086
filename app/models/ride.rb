class Ride 
attr_accessor :driver, :passenger, :distance 

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver 
        @passenger = passenger 
        @distance = distance 

        @@all << self 
    end

    def Ride.all 
        @@all 
    end

    def Ride.average_distance
        total = 0.0

        @@all.each do |ride|
            total += ride.distance
        end

        total / @@all.length
    end



end 
