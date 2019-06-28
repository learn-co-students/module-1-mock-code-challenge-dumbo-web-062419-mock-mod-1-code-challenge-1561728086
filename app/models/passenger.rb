class Passenger

    attr_reader :name, :rides, :drivers, :total_distance

    @@all = []
    @@premium_members =[]

    def initialize(name)
        @name = name
        @rides = []
        @drivers = []
        @total_distance = 0.0
        #add to ride array of passengers when initialized
        Ride.add_passenger(self)
    end
       
    def self.all
        @@all
    end

    def self.premium_members
        @@all.each do |p|
            if p.total_distance > 100
                @@premium_members << premium_members
            end
        end
    end

end

