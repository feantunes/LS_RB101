# calculate and return the index of the first Fibonacci number that has the
# number os digits specified as an argument.

#PROBLEM
# Calculate the index of first fibonacci number with the required digit count. 
# Input is an integer
# The return is an integer
# the index starts at 1.
# Fibonacci is a sequence that starts with 1, 1, 2, 3, 5, 8 .. the sum of the 
# earlier
# DATA Structures
# Let's find the element in an array. We need to create the fibonacci sequence
# in order to find the number.

def find_fibonacci_index_by_length(digits)
  fibonacci = [1, 1]
  loop do
    current_number = fibonacci[-1] + fibonacci[-2]
    fibonacci << current_number
    break if fibonacci[-1].to_s.length == digits
  end
  fibonacci.size
end


p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000)  == 47847