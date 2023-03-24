# difference between the square of the sum of the first n positive integers
# and the sum of the squares of the first n positive integers

def sum_square_difference(num)
  square_sum = (1..num).sum**2
  sum_squares = (1..num).map { |i| i**2 }.sum
  square_sum - sum_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150