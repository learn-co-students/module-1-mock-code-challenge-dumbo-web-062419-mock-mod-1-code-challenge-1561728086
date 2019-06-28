require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

#__PASSENGERS__
p1 = Passenger.new("Chris")
p2 = Passenger.new("Tony")
p3 = Passenger.new("Anni")

#__DRIVERS__
d1 = Driver.new("Nemo")
d2 = Driver.new("Dory")

#__RIDES__
r1 = Ride.new(d1, p1, 3.1)
r2 = Ride.new(d2, p1, 9.8)
r3 = Ride.new(d2, p2, 4.3)

binding.pry
