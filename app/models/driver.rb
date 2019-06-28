class Driver
    attr_reader :name, :passenger, :rides, :all_passengers

    @@all_passengers = []
    @@all = []

    def initialize(name)
        @name = name
        @@all_passengers << self
        @@all << self
    end

    def passenger_names
        @@all_passengers
    end

    def self.all
        @@all
    end

end
