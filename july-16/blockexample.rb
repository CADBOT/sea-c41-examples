def printName(name)
  puts name
  yield('hello from printName', 2) if block_given?
  yield('hello from printName...again!', 4) if block_given?
end

printName('John') do |blockParam, number|
  puts "You have a block, even if you don't want it!"
  puts blockParam
  puts number
end

printName('George + sue')

p [1, 2, 3, 4,].map(&:to_s)
