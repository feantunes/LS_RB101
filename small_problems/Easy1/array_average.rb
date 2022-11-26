# Takes an array containing integers and returns the average of all numbers

def average(arr)
  arr.inject(:+) / arr.length
end

puts average([1, 6, 10])

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# Further Exploration - change the result to float. 
# I will just change the denominator to_f and will be it

def average(arr)
  my_avg = arr.inject(:+) / arr.length.to_f
  my_avg.ceil(2) #to reduce the digits.
end

puts average([1, 6, 10])

puts average([1, 6]) 
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])
 
p [9, 47, 23, 95, 16, 52].sum(0.0) / [9, 47, 23, 95, 16, 52].length