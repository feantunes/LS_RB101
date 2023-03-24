# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# Examples:

def minimum_sum(array)
  return nil if array.size < 5
  result = []
  array.each_with_index do |_, idx|
  break if idx + 5 == array.size
    result << array[idx..idx+4]
  end
  result.min_by {|subarr| subarr.sum }.sum
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".

# Iterate through the array and get all the sums of 5 consecutive. Then, get the minimum sum
# return nil if array.size < 5
# create a result array
# Write each with index to iterate create the subarrays and break when result include?(arr[-1])
# then, min_by sum and .sum 