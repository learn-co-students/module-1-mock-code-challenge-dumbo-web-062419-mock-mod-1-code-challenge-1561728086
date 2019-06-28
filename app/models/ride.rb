class Ride
attr_accessor :passenger, :driver

@@all = []
@@ride_count = 0
def initialize(driver)
    @driver = driver
    @ride_count +=1
    @@all << self
end


def self.all
    @@all
end

end
