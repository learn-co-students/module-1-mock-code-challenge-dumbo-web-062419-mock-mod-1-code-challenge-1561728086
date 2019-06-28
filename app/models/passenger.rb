class Passenger
    attr_accessor :ride
    attr_reader :name

@@all = []
    def initialize(name)
        @name = name
        @@all << self 
        @rides = []
    end

    def rides
        Ride.all.select do|x|
          if x == self
            return x
          end
        end
    end

    def drivers
        @drivers
    end

    def total_distance
        Ride.distance.select do|dis|
            if dis == self 
                return dis.sum
            end
        end
    end

    def premium_members
        if self.all distance >= 100
            return passengers
    end






end