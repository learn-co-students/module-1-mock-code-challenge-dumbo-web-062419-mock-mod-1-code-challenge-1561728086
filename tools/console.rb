require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

driver1 = Driver.new("sherlock")
driver2 = Driver.new("Irene")
driver3 = Driver.new("Mycroft")


passenger1 = Passenger.new("House")
passenger2 = Passenger.new("Wilson")
passenger3 = Passenger.new("Lisa")

ride1 = Ride.new(driver2, passenger3, 40.0)
