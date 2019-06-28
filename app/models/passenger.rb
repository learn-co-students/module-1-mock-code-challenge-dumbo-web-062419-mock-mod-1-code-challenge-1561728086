require 'pry'

class Passanger 
    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select do |ride|
        ride.passanger == self
        
        end
        binding.pry
    end

    def drivers
        Driver.all


    end


    def drivers
    end
    def total_distance
    end

    def self.all
        @@all
    end
    

binding.pry
end

