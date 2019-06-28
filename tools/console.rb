require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
#driverz 
driver1 = Driver.new("driver1")
driver2 = Driver.new("Baby Driver")
driver3 = Driver.new("Robert Deniro")

#passengerz
passenger1 = Passenger.new("passenger1")
passenger2 = Passenger.new("passenger2")
passenger2 = Passenger.new("passenger2")
passenger4 = Passenger.new("passenger1")



#ridez!!!!!!!
ride1 = Ride.new(driver1, passenger1, 100.5)
ride2 = Ride.new(driver2, passenger1, 61.6)
ride3 = Ride.new(driver3, passenger1, 10.4)
ride4 = Ride.new(driver1, passenger2, 20.3)
ride5 = Ride.new(driver1, passenger4, 66.6)




binding.pry
