class Passenger
  attr_accessor :name, :passenger, :ride, :distance
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  # Returns an array of all Passengers


  def name
    passenger.name = self
  end
  # Returns the name of the passenger

  def rides
    Rides.all.select {|ride| ride.passenger == self}
  end
  # Returns an array of Ride instances that this person has been on

  def drivers
    Driver.all.select {|ride| ride.driver == self}
  end
  # Returns an array of Driver instances that this person has rode with


  def total_distance
    counter = 0
    passenger.ride 
  end
  # Returns the floating number that represents the total distance the passenger has travelled using the service

  def self.premium_members
    Passenger.all.each do |person|
      if person.total_distance > 100
      @@all << self
  end
  # Returns an array of all Passengers who have travelled over 100 miles in total with the service

end
