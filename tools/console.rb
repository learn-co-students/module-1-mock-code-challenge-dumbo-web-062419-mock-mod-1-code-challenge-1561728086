require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

p1 = Passenger.new("Sarah")
p2 = Passenger.new("Tony")
p3 = Passenger.new("Ishmet")

d1 = Driver.new("Aliciea")
d2 = Driver.new("Dennis")
d3 = Driver.new("Ali")

r1 = Ride.new(d1, p2, 59)
r2 = Ride.new(d2, p1, 11.1)
r3 = Ride.new(d3, p3, 4.3)
r4 = Ride.new(d1, p2, 107.5)


binding.pry
