#many to many, driver has many passengers(one driver)through ride

class Driver
    
    attr_accessor :name, :ride, :driver
    
    def initialize(name)
    @name = name
    @ride = [] 
    @@all = []
    @driver = driver 
    end
    
    def passenger_names
    #Returns an array of all Passengers'
    #names a driver has driven
    #The names should be **unique** (no repeats)

    end
    
    # driver.all
#returns an arr of @@all drivers

    def Driver.mileage_cap(distance)
    #Takes an argument of a distance (float) and returns
    #an array of all Drivers who have driven over the mileage
    end


end 
driver = driver.new





