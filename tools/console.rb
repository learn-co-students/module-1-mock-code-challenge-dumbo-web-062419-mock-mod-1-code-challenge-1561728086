require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

driver1 = Driver.new("sam")
driver2 = Driver.new('fred')
driver3 = Driver.new('cole')

passenger1 = Passenger.new('L')
passenger2 = Passenger.new('Frodo')
passenger3 = Passenger.new('Bilbo')

ride1 = Ride.new(driver1, passenger2, 3.2)
ride2 = Ride.new(driver2, passenger3, 5.1)
ride3 = Ride.new(driver3, passenger1, 2.3)
ride4 = Ride.new(driver2, passenger1, 2.7)
ride5 = Ride.new(driver3, passenger2, 101)
ride6 = Ride.new(driver2, passenger1, 2.7)

# Put your variables here~!

binding.pry
