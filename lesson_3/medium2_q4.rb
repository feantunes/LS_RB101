def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

=begin
now look at that. The method utilized for the string concatenates to the same
string. The value of the outer scope will be modified because of it. 
and the array is now an variable assignment, and assignments don't change 
the the original object. 

when the method is initialized, the parameters passed to it become local
variables to the method and they exists only there. they reference the
same object in the outer scope and we can do operations with it, now it 
will depend on the type of the operation to see if the return is destructive
or not. The string is going to be mutated because of the << method, while 
the array will remain the same because of the = method assignment
string is 'pumpkinsrutabaga' and array oly ['pumpkins']
=end

