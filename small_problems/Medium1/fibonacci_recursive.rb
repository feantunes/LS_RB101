# Write a recursive method that computes the nth Fibonacci number,
# where nth is an argument to the method.

def fibonacci(nth)
  return 0 if nth == 0
  return 1 if nth == 1
  fibonacci(nth - 1) + fibonacci(nth - 2)
end

p fibonacci(25)

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
