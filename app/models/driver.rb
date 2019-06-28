
class Driver
@@all = []
attr_accessor :name , :passenger, :rides, :total_distance
def initialize(name)
    @name = name
    @rides = rides
    @@all << self
end


def self.all
    @@all
end

def passenger_names
    name = []
    Passenger.all.each do |name|
        name << name.self
    end
    name
end


end