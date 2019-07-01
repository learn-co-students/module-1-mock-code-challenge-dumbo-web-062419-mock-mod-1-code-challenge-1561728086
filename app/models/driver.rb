class Driver
    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name
        @@all<< self
    end

    def rides
        Ride.all.select { |ride| ride.driver == self }
    end

    def passenger_names
        ## grab only the rides the THIS driver
        my_rides = Ride.all.select { |ride| ride.driver == self }
        my_rides.map { |ride| ride.passenger.name }.uniq
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        # look through all the drivers
        self.all.select do |driver|
            # pick out only the drivers whose mileage went above the given distance
                # calculate the mileage for this driver
            total_distance_for_this_driver = 0

            Ride.all.each do |ride| 
                if ride.driver == driver
                    total_distance_for_this_driver += ride.distance
                end
            end
            total_distance_for_this_driver > distance
        end
    end

end
