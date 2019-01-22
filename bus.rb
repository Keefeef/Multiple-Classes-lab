class Bus

attr_accessor :route_num, :destination, :passengers

def initialize(route_num, destination)
  @route_num = route_num
  @destination = destination
  @passengers = []
end

def add_passenger(person)
  @passengers.push(person)
end

def drop_off_passenger(person)
  @passengers.delete(person)
end

def remove_all_passengers
  @passengers = []
  return @passengers
end 

end
