class Driver

    attr_reader :name, :passenger_names, :rides

    @@all =[]
    @@mileage_cap = []

    def initialize(name)
        @name = name
        @passenger_names = []
        @rides = []
        #add to ride array of drivers when initialized
        Ride.add_passenger(self)


    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        #need ride class first
    end

end
