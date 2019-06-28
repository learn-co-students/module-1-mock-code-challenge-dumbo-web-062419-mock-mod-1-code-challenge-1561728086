class Driver

	attr_reader :name
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def passenger_names
	  # - Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).
		self.rides.map{|ride| ride.passenger.name}.uniq
	end
	def rides
	  # - Returns an array of all Rides a driver has made
	  Ride.all.select{ |ride| ride.driver == self}
	end

	def self.all
	  # - Returns an array of all Drivers
	  @@all
	end
	
	def self.mileage_cap(distance)
	  # - Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
	  Ride.all.select{|ride| ride.distance > distance}.map{|ride_over_d| ride_over_d.driver}.uniq
	end
end
