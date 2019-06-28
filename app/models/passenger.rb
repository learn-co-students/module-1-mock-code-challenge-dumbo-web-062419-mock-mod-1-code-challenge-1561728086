class Passenger
    attr_accessor :name , :driver, :rides, :total_distance
    @@all = []
    def initialize(name,rides,driver)
        @name = name
        @rides = rides
        @@all << self
    end
    def self.all
        @all
    end
def self.rides
    rides = []
    Ride.all.each do |ride|
        rides << self
    end
    rides
end








end
