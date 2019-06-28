require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
passenger1 = Passenger.new("Harry Potter")
passenger2 = Passenger.new("Mr. Krabs")

driver1 = Driver.new("Mr. Chauffeur")
driver2 = Driver.new("Fast and Furious")

ride1 = Ride.new(driver1,passenger1,23.4)
ride2 = Ride.new(driver2,passenger1,23.6)

binding.pry
