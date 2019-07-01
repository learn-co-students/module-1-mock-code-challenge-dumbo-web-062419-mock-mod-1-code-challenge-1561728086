require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

passenger1 = Passenger.new("Joe")
driver1 = Driver.new("Tony")
driver2 = Driver.new("Eric")
driver3 = Driver.new("Graham")
driver4 = Driver.new("Kevin")

ride1 = Ride.new(driver1, passenger1, 7.7)
ride2 = Ride.new(driver2, passenger1, 1.7)
ride3 = Ride.new(driver3, passenger1, 5.2)

# Put your variables here~!

binding.pry
