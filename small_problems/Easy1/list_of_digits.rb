# Q: Write a method that takes one argument, a positive integer, and returns
# a list of the digits in the number.

# So we want to transform the integer in an Array with the digits.
# Its there a method? let's check Integer docs.
# Well, there's the Integer#digits method! 

def digit_list(integer)
  integer.digits.reverse
end

# the digits method brings the least significant digit as the first element
#we needed to apply the Array#reverse method to put it back.


puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true