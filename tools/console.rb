require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

driver1 = Driver.new("Ali")
# driver2 = "Sean"
# driver3 = "Beto"

passenger1 = Passenger.new("Tony")
# passenger2 = "Annie"
# passenger3 = "Ayana"

distance1 = 1.1
# distance1 = 2.2
# distance1 = 3.3

ride1 = Ride.new(ride1, driver1, passenger1, distance1)
ride2 = new_ride("name1", driver1, passenger1, distance1)
# ride2 = (driver2, passenger2, distance2 = 2.2)
# ride3 = (driver3, passenger3, distance3 = 3.3)



binding.pry
