def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

#use the ruby documentation to determine what this code will print. 

# Ruby will fill in the missing arguments in-order, form left to right.
# Ruby will assign 4 to a 6 to d. Then Ruby will assign 5 to b. 
# The return is [4, 5, 3, 6].