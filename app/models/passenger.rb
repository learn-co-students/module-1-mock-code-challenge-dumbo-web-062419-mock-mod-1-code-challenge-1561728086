class Passenger
    attr_accessor :total_distance
    attr_reader :name, :rides, :drivers

    @@all = []

    def initialize(name)
        @name = name
        @rides = []
        @drivers = []
        @total_distance = 0.0
        @@all << self
    end

    def Passenger.all
        @@all
    end

    def Passenger.premium_members
        premium_members = []
        premium_members << @@all.select do |passenger|
            passenger.total_distance > 100
        end
        return premium_members.uniq
    end
end