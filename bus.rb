class Bus

    attr_reader :route_number, :destination, :passengers

    def initialize(route_number, destination)
        @route_number = route_number
        @destination = destination
        @passengers = []
    end
   
    def drive()
        return "Brum brum"
    end
    
    def pick_up(new_passenger)
        @passengers.push(new_passenger)
    end

        
end