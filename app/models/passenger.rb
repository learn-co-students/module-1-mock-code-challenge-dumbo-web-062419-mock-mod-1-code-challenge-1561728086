class Passenger

	attr_reader :name
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def rides
		# Returns an array of Ride instances that this person has been on
		Ride.all.select{|ride| ride.passenger == self}
	end

	def drivers
		# Returns an array of Driver instances that this person has rode with
		# Ride.all.select rides where ride passenger == self and then returns the driver of each ride
		self.rides.map{|my_rides| my_rides.driver}.uniq
	end
	def total_distance
		# Returns the floating number that represents the total distance the passenger has travelled using the service
		total_d
		self.rides.each{|ride| total_d += ride.distance}
		total_d
	end
	def self.all
		# Returns an array of all Passengers
		@@all
	end
	def self.premium_members
		# Returns an array of all Passengers who have travelled over 100 miles in total with the service
		all_pass_rides = self.all.map{|passenger| {passenger => passenger.rides}}
		all_pass_dists = all_pass_rides.map do |pass, one_pass_rides| 
				{
					pass => one_pass_rides.map{|ride| ride.distance}
				}
		end
		each_pass_total_dist = all_pass_dists.each{ |pass, dist_array| all_pass_dists[pass] = dist_array.sum}
		each_pass_total_dist.select{|pass, one_pass_total| one_pass_total > 100}
	end
end