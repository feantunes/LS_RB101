def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Study the code and state what will be displayed and why

=begin
the method uses string concatenation, which is not a destructive method.
therefore, the assignment will occur inside the method but won't affect the
string in the outer scope.

the method for an array is the shoveling, which is a destructive method that
will mutate the caller. 

the method is called with the string 'pumpkins' and the array ['pumpkins'].
Well, the expected returns of the method are "pumpkinsrutabaga" and 
['pumpkins', "rutabaga"]. 

we are now printing the variables to the console with puts. We can expect 
the output to be:

puts "My string looks like this now: pumpkins #the outer scope was not altered
puts "My array looks like this now: ['pumpkins', "rutabaga"]. # The array was modified
=end