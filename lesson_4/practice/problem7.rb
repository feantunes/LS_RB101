# Create a hash that expresses the frequency with which each letter
# occurs in this string:

statement = "The Flintstones Rock"

frequency = Hash.new(0)
statement.delete(' ').chars.sort.each do |char|
  frequency[char]+= 1
end

p frequency
  