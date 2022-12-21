# What happens when we modify an array while we are iterating over it? 
# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# when each is called, it will start iterating over the indexes. 
# it will print 1 and then the array is going to be modifies to [2,3,4].
# The next item printed is at index one, so the print will be 3 and, again,
# the array is modified to [3,4]. Now it will look for index 2, and there's 
# nothing on index 2, so it will not print anything.



#what about this code?
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# It will print 1, then 2 and that's it. 