#what this will print?

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# Will return the names starting with C and S with upcase.
# when we added the values on the new array, we moved the object reference
# Array 2 is a new object but the strings inside of it still reference the same
# string object from array 1. Therefore, performing a destructive method on the
# objects inside the array2, it will change array 2 as well. 
%w(Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo)