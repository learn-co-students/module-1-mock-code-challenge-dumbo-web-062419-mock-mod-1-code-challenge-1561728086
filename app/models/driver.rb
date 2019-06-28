class Driver
    attr_accessor :rides
    attr_reader :name, :passengers

    @@all = []

    def initialize(name)
        @name = name
        @rides = []
        @passengers = []
        @@all << self
    end

    def passenger_names
        passenger_names = []
        @passengers.each do |passenger|
            passenger_names << passenger.name
        end
        return passenger_names.uniq
    end

    def Driver.all
        @@all
    end

    def Driver.mileage_cap(distance)
        result = []
        @@all.each do |driver|
            driver.rides.each do |ride|
                if ride.distance > distance
                    result << driver
                end
            end
        end
        return result.uniq
    end
end