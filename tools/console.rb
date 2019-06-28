require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

newguy1 = Passenger.new("bob")
newguy2 = Passenger.new("Mikey")
newguy3 = Passenger.new("Henry")
newdriver1 = Driver.new("Ali")
newdriver2 = Driver.new("Matt")
newdriver3 = Driver.new("Luke")

ride1 = Ride.new(newguy1, newdriver1, 10)
ride2 = Ride.new(newguy1, newdriver2, 11)
ride3 = Ride.new(newguy1, newdriver3, 11)
ride3 = Ride.new(newguy2, newdriver3, 11)
ride4 = Ride.new(newguy2, newdriver3, 11)
binding.pry
