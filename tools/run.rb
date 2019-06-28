require_relative '../app/models/passenger.rb'
require_relative '../app/models/driver.rb'
require_relative '../app/models/ride.rb'

require 'pry'



john = Passenger.new("John")
rachael = Passenger.new("Rachael")


david = Driver.new("David")
luke  = Driver.new("Luke")


bronx = Ride.new("Charles", "John", 50)
binding.pry