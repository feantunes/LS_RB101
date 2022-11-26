# return the sum of digits of an integer

# Solution 1 using Array and String methods
def sum(num)
  num_array = num.to_s.chars
  num_array.map! { |x| x.to_i }
  num_array.sum
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# Solution 2 using Integer#digits -> returns an array of digits, perfect. 

def soma(number)
  number.digits.sum
end

puts soma(23) == 5
puts soma(496) == 19
puts soma(123_456_789) == 45