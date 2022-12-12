# why this is an error and how to fix it?

# puts "the value of 40 + 2 is " + (40 + 2)

# This is an error because puts mean put string and the operation (40+2) is an
# integer. To resolve this, we need to use string interpolation.

puts "the value of 40 + 2 is " + "#{(40+2)}"

#using the #{} we tell ruby to evaluate the operation inside of it.

#we can also use (40+2).to_s

puts "the value of 40 + 2 is " + (40+2).to_s