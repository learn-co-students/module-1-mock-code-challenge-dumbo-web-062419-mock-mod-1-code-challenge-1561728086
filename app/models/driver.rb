class Driver

    attr_accessor :passenger_name, :rides, :disance
    #attr_writer
    attr_reader :name

    @@all=[]

    def initialize (name)
        @name = name
        @passenger_name= passenger_name
        @rides= rides
        @@all<< self
    end

    #Driver.mileage_cap(distance)`
  #Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
    def mileage_cap (distance)
        @disance  
    end
    
    def self.all
        # I forgot the syntax for this part and I don't know if it would be considered cheating to look up the syntax therefore I left it empty
    self<< self.all
    end


end
