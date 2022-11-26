# Write a method that takes one argument, a positive integer, and returns
# a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

def stringy(num, start=1)
  num_string = ""
  until num == num_string.size
    if num_string.size.even?
      num_string << "#{start}"
    else
      num_string << "#{1-start}"    
    end
  end
  num_string
end

puts stringy(6, 0)
puts stringy(6, 1)
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'