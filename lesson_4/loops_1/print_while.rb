# Using a while loop, print 5 random numbers between 0 and 99 (inclusive). 
# The code below shows an example of how to begin solving this exercise.


numbers = []

while numbers.length < 5
  numbers << rand(0..99)
  puts numbers.last
end