class Passenger

  attr_reader :name
  attr_accessor :rides, :drivers, :total_distance

  @@all = []

  def initialize(name)
    @name = name
    @rides = rides
    @drivers = drivers
    @total_distance = total_distance

    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end

  def drivers
    drivers = []
    Ride.all.select do |ride|
      if ride.passenger == self
        drivers << ride.driver
      end
    end
    drivers 
  end

  def total_distance
    total = 0
    Ride.all.select do |ride|
      if ride.passenger == self
        total += ride.distance
      end
    end
    total
  end

  def self.premium_members
    premium_passengers = []
    Ride.all.select do |ride|
      if ride.distance > 100
        premium_passengers << ride.passenger
      end
    end
    premium_passengers
  end

end
