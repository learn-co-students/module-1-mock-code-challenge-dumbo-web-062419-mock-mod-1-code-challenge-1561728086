class Ride
    attr_reader :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        driver.rides << self
        driver.passengers << passenger
        @passenger = passenger
        passenger.rides << self
        passenger.drivers << driver
        @distance = distance
        passenger.total_distance += distance
        @@all << self
    end

    def Ride.average_distance
        sum = 0.0
        count = 0.0
        @@all.each do |ride|
            sum += ride.distance
            count += 1
        end
        sum / count
    end
end