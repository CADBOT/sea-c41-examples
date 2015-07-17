module Flyer
  def accelerate
    puts 'accelerate flight!'
  end
end

class SuperHero
  attr_accessor :name, :power, :sidekick
  attr_writer :identity

  def initialize(name, identity, power, sidekick)
     @name = name
     @identity = identity
     @power = power
     @sidekick = sidekick
  end

  def self.superHeroStuff
    puts 'super!'
  end

  def battlecry
    puts "I am #{name}"
  end

  def dealDamage(enemy)
    enemy.health -= @power
  end

end

class MarvelHero < SuperHero
  include Flyer
  def initialize(name, identity, power, sidekick)
    super(name, identity, power, sidekick)
  end
  
  def dealDamage(enemy)
    super(enemy)
    super(enemy)
  end 
end

class LameMarvelHero < MarvelHero
  def initialize(name, identity, power, sidekick)
    super(name, identity, power, sidekick)
  end

  def battlecry
    super()
    puts 'I am a lame hero too...'
  end
end



