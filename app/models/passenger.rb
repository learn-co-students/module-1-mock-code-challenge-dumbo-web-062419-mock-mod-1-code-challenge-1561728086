class Passenger 

    attr_accessor :name, :drivers, :rides 
    attr_writer
    attr_reader 

    @@all = []

    def initialize (name)
        @name = name
    end

    def premimun_members 
        @rides.find do |ele|
            ele>100
            return @name
        end

    end


end 
