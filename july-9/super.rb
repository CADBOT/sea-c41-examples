class Vehicle
  attr_accessor :name, :speed
  
  def initialize(name, speed)
    @name = name
    @speed = speed
  end

  def move_forward
    puts "the ride moved forward"
  end

  def display_speed_in_erratic_matter
    "Wow!!!! WE ARE GOING #{@speed} MILES PER HOUR"
  end
end 

class Delorean < Vehicle
  def initialize(name, speed, color)
    super(name, speed)
    @color = color
  end
    
  
  def display_speed_in_erratic_matter
    super()
    "Wow!!!! WE ARE GOING #{@speed} MILES BACK TO THE FUTURE"
  end
end

v = Vehicle.new()
puts v.speed
my_delorean = Delorean.new()
puts my_delorean.display_speed_in_erratic_matter

def ride_curator(vehicle)
  puts "I give #{vehicle.name} a 10 out of 10"
  puts "I think it goes about #{vehicle.speed}"
end

class Person
  attr_accessor :name
  def initialize
    @name = 'Bob'
  end
end


ride_curator(Vechicle.new())
ride_curator(Delorean.new())
ride_curator(Person.new())





