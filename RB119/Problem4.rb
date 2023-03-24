# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# Examples:

def closest_numbers(array)
  result = []
  (0..array.size-2).each do |index|
    (index..array.size-2).each do |idx|
      result << [array[index], array[idx+1]]
    end
  end
  result.min_by { |subarr| (subarr[0]-subarr[1])**2}
end


p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".

# find all number combinations 
# get min_by one minus the other. multiply -1 if sum is negative
# initiate a result array 
# run each method on the range 0..array.size-2 and append the sub.arrays
# min_by { |subarr| (subarr[0]-subarr[-1])**2 }