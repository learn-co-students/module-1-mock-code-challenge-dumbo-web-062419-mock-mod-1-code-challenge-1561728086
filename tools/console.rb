require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

passenger1 = Passenger.new("Amy")
passenger2 = Passenger.new("Jane")

driver1 = Driver.new("Ben")
driver2 = Driver.new("Tom")
driver3 = Driver.new("Ada")

ride1 = Ride.new(driver1, passenger2, 1.4)
ride2 = Ride.new(driver1, passenger1, 2.1)
ride3 = Ride.new(driver1, passenger2, 0.7)
ride4 = Ride.new(driver2, passenger2, 4.4)
ride5 = Ride.new(driver2, passenger1, 1004.4)




binding.pry
