require_relative '../config/environment.rb'
def reload
  load 'config/environment.rb'
end


# Put your variables here~!
pass1 = Passenger.new("Rashad",1,"Amit")
pass2 = Passenger.new("Cindy",5,"Bobby")
pass3 = Passenger.new("Monica",1,"Peter")
pass4 = Passenger.new("Sabby",4,"Strange dude")
pass4 = Passenger.new("Olga",4,"Strange dude")
pass4 = Passenger.new("Aliciea",4,"Strange dude")


driver1 = Driver.new("Strange dude")
driver2=Driver.new ("Peter")
driver3 = Driver.new("Amit")

binding.pry