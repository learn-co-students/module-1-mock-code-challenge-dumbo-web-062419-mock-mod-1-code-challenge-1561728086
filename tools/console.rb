require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
passenger1 = Passenger.new("Olga")
driver1 = Driver.new("Jahaziel")
ride1 = Ride.new("Jahaziel", "Olga", 2.4)
driver2 = Driver.new("Irina")
ride2 = Ride.new("Irina", "Olga", 3.6)
driver3 = Driver.new("Emmanuel")
ride3 = Ride.new("Emmanuel", "Olga", 4.8)
driver4 = Driver.new("Laurell")
ride4 = Ride.new("Laurell", "Olga", 6.8)
passenger2 = Passenger.new("Aleks")
passenger3 = Passenger.new("Ali")
passenger4 = Passenger.new("Lawson")
ride5 = Ride.new("Laurell", "Aleks", 10.8)
ride6 = Ride.new("Emmanuel", "Lawson", 52.7)



binding.pry
