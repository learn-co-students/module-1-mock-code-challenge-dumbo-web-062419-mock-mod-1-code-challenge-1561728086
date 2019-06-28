
class Passenger
  attr_accessor :driver, :ride
  attr_reader :name

  @@passengers = []

  def initiazlize(name)
    @name = name
    @@passengers << self
  end

   def rides
     Ride.all.select do |ride|
       ride.passenger == self
     end
   end

   def drivers
     Ride.all.select do |ride|
       ride.driver == self.driver
     end
   end

   def total_distance
     total_distance = 0

     Ride.all.each do |ride|
       if ride.passenger == self.passenger
         total_distance += ride.distance
       end
     end
     total_distance
   end

   def self.all
     @@passengers
   end

   def self.premium_members
     @@all.select do |passenger|
       passenger.total_distance > 100
     end
   end
end


# # Passenger#name
# # Returns the name of the passenger
# Passenger#rides
# Returns an array of Ride instances that this person has been on
# Passenger#drivers
# Returns an array of Driver instances that this person has rode with
# Passenger#total_distance
# Returns the floating number that represents the total distance the passenger has travelled using the service
# Passenger.all
# Returns an array of all Passengers
# Passenger.premium_members
# Returns an array of all Passengers who have travelled over 100 miles in total with the service
