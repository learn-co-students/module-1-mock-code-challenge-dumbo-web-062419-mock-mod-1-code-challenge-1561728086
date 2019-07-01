class Driver
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def passenger_names
        # get all rides where I AM the driver
        # transform the array of MY RIDES to array of PASSENGERS
        my_rides = Ride.all.select do |ride|
            ride.driver == self
        end
        
        # each - do something to things in array
        # select - filters arrays
        # find - finds first from arrays
        # map - transforms arrays
        my_rides.map do |ride|
            ride.passenger.name
        end

        rides.map { |ride| ride.passenger.name }.uniq
    end

    # return an array of rides for THIS driver
    def rides
        # empty_array = []
        # Ride.all.each do |ride|
        #     # if the ride's driver is equal to this driver,
        #     # then we keep this ride
        #     # otherwise, next
        #     if self == ride.driver
        #         empty_array << ride
        #     end
        # end
        # empty_array
        Ride.all.select { |ride| self == ride.driver }
    end

    def self.mileage_cap(distance)
        # come back to this later
    end
end