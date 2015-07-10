module Drivable
  def move
    puts "moved forward at the speed of #{@speed}"
  end
end

module Crashable
  def crash
    puts "crashed at the speed of #{@speed}"
  end
end

class Vehicle
  attr_accessor :name, :speed

  def initialize(name, speed)
    @name = name
    @speed = speed
  end
end

class Car < Vehicle
  include Drivable
  include Crashable
 
  def initialize(name, speed)
    super(name, speed)
  end
end

car = Car.new('mycar', 9001)
car.move
car.crash
