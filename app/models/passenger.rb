
class Passenger
    attr_accessor :name, :driver

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
				#array of ride instances the person has been on
        # if Ride.passenger == self #problems here
        #     Ride.all.select{|ride| ride}
				# end
				
				# review session solution
				Ride.all.select { |ride| ride.passenger == self }
    end

    def drivers
				# my_rides = Ride.all.select { |ride| ride.passenger == self }
				# my_rides.map { |ride| ride.driver }

				# this is the same thing as above
				rides.map { |ride| ride.driver }
    end

		def total_distance
			# set a counter
			# iterate through the rides, find the distance for that ride, add that distance to the counter
			total_distance = 0
			rides.each { |ride| total_distance += ride.distance }
			total_distance
    end

    def self.all
        @@all
    end

    def self.premium_members
				#array of passengers how have traveled over 100 miles
				@@all.select do |passenger|
					passenger.total_distance > 100
				end
    end


end

