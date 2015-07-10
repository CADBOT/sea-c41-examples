class Person
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def age=(age)
    @age = age if age >= 0
  end

end

sue = Person.new('sue', 20)
puts sue.name
puts sue.age
sue.age = 21
sue.name = 'johnny'
