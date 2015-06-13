

class Van

 VAN_DEFAULT_CAPACITY = 5

 attr_accessor :van_capacity

 def initialize
   @van_bikes = []
   @van_capacity = VAN_DEFAULT_CAPACITY
 end


 def release_bike
   fail 'No bikes available' if empty?
   van_bikes.pop
 end

 def load bike
   fail "Van full" if full?
   van_bikes << bike
 end

 private

 attr_reader :van_bikes

 def empty?
   van_bikes.empty?
 end

 def full?
   van_bikes.count >= @van_capacity
 end

end