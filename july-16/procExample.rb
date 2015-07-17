=begin
def myFunction(param1, param2, &block)
  if block_given?
    block.call()
    yield
  end
end

myFunction('hello', 3) { puts 'a block' }
myFunction('hello', 3) 

myProc = Proc.new do |one, two|
  p one
  p two
  puts 'I am a proc!'
end

myLambda = lambda do |one, two|
  p one
  p two
  puts 'I am a lambda proc!'
end

myProc.call('something')
myLambda.call('something')

=end

def otherFunction(condition, callback_one, callback_two)
    callback_one.call
    callback_two.call
end

lamb_one = lambda { puts 'Lambda one' }
lamb_two = lambda { puts 'Lambda two' }
otherFunction(true, lamb_one, lamb_two)
otherFunction(false, lamb_one, -> { puts 'anon lambda' })
otherFunction(false, -> { puts 'another lambda' }, -> { puts 'anon lambda3' })


