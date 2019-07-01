class Passenger 
    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name

        # self.class.all << self
        @@all<< self
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers
        # look through the rides to which rides I've taken
        # instead seeing the list of rides, i want to see the DRIVER for those rides

        #### this is the long way ========
            # my_rides = Ride.all.select do |ride|
            #     ride.passenger == self
            # end

            # my_rides.map { |ride| ride.driver }
        #### =============================

        ### using the helper method
        rides.map { |ride| ride.driver }
    end

    def total_distance
        total_distance = 0
        rides.each do |ride|
            total_distance += ride.distance
        end
        total_distance
    end

    def self.all
        @@all
    end

    def self.premium_members
        # come back to this later
        ## Loop through
        Passenger.all.select do |passenger|
            passenger.total_distance > 100
        end
        ## returns an ARRAY OF PASSENGERS
    end

end 
