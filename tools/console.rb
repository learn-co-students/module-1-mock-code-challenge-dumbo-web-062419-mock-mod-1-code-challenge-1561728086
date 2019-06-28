require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

pas1 = Passenger.new("Bob")
drv1 = Driver.new("Peter")
ride1 = Ride.new(drv1, pas1, 35.2)
ride2 = Ride.new(drv1, pas1, 45.76)
ride3 = Ride.new(drv1, pas1, 50.0)

binding.pry
