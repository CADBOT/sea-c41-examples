define_method('my_shiny_new_method') do |param1|
  puts "#{param1} was passed in"
end

my_shiny_new_method('hello there')

class Animal
  def initialize
    @name = 'Henry'
  end

  define_method('stuff') do |param1|
    puts "#{param1} was passed in"
  end
end

a = Animal.new()

a.stuff('a string')

%w(monkey cat dog).each do |method_name|
  define_method("#{method_name}_says_hi") do
    puts "I am a #{method_name}"
  end
end

dog_says_hi

class Person
  #attr_reader :name, age, address

  def initialize(name, age, address)
    @name = name
    @age = age
    @address = address

    %w(name age address).each do |attribute|
      define_method(attribute) do
        attribute 
      end
    end

  end

end

