#many to many, passengers has many rides(drivers)through ride
#Instance variables are Instance variables are preceded 
#by the at sign (@) followed by the variable name.

class Passenger

    attr_accessor :ride, :driver
    attr_reader :name,

    def initialize(name)
        @name = name
        @ride = []
        @driver = []
        @@all  
    end 

    def name 
        @name
    end

    def total_distance
        #Returns the floating number that 
        #represents the total distance the passenger 
        #has travelled using the service
    end

    # Passenger.all
    #returns [] of @all passengers 

    def Passenger.premium_members
        #Returns an array of all Passengers who 
        #have travelled over 100 miles in total with the service
    end







end
