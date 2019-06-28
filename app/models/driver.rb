class Driver 
attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end
    
    def passenger_names
        array = rides.map {|rides| rides.passenger.name}
        array.uniq 
    end

    def  Driver.all 
        @@all
    end

    def total_distance
        total = 0.0
        rides.each do |rides|
        total += rides.distance
        end
        return total
    end

   def Driver.mileage_cap(distance)
        @@all.select {|driver| driver.total_distance > distance}
    
   end 
end