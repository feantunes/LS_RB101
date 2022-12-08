# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# the method Array#uniq is a non-destructive method, therefore the result is
# going to be every element of the array, one each line. 1 \n 2\n 2\n 3\n

puts numbers.inspect