[1, 2, 3].map do |x|
  puts x
end

[1, 2, 3, 4, 5, 6].select { |n| n % 2 == 0 }
# [2, 4, 6]

[1, 20, 1000, 5].select { |n| 
                   n < 100
               }.map { |n|
                   n * 2
               }

      [1, 20, 5].map { |n|
                   n * 2
               }

tmp = [1, 20, 1000, 5].select { |n| n < 100 }
tmp.map { |n| n * 2 }

[1,2,3,4,5].reduce(500) { |sum, value| sum + value}
