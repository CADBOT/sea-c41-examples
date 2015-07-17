def silly
  'silly method method'
end

def outer(callback)
  puts 'in silly'
  puts callback.call
end

outer(method(:silly))

#outer(silly)

myLambda = lambda { 'my lambda' }

outer(myLambda)
