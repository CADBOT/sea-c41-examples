
class Person
  attr_accessor :name

  def initialize
    @name = 'John'
  end

  # The above attr_accessor will generate
  # These two functions
  # NOTE double defining the methods like this
  # is improper
  def name
    @name
  end

  def name=(name)
    @name = name
  end

end
