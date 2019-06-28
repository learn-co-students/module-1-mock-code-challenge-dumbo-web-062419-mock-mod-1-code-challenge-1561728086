require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
pass1 = Passenger.new("johnny")
pass2 = Passenger.new("bonny")
pass3 = Passenger.new("donny")
pass4 = Passenger.new("conny")
pass5 = Passenger.new("lonny")
pass6 = Passenger.new("sonny")

driver1 = Driver.new("julio")
driver2 = Driver.new("dulio")
driver3 = Driver.new("foolio")
driver4 = Driver.new("coolio")


ride1 = Ride.new(pass1, driver1, 10)
ride2 = Ride.new(pass1, driver2, 5)
ride3 = Ride.new(pass1, driver3, 10)
ride4 = Ride.new(pass1, driver4, 10)
ride5 = Ride.new(pass2, driver1, 7)
ride6 = Ride.new(pass2, driver2, 10)
ride7 = Ride.new(pass2, driver3, 4.6)
ride8 = Ride.new(pass2, driver4, 2)
ride9 = Ride.new(pass3, driver1, 10)
ride10 = Ride.new(pass3, driver2, 1)
ride11 = Ride.new(pass3, driver3, 10)
ride12= Ride.new(pass3, driver4, 3)
ride13 = Ride.new(pass4, driver1, 11)
ride14 = Ride.new(pass5, driver3, 0.5)
ride15 = Ride.new(pass5, driver4, 10)
ride16 = Ride.new(pass6, driver2, 2.4)
ride17 = Ride.new(pass6, driver4, 6)

binding.pry
