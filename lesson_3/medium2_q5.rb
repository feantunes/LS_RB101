def tricky_method_str(a_string_param)
  a_string_param + "rutabaga"
end

def tricky_method_arr(an_array_param)
  an_array_param + ["rutabaga"]
end

my_string = "pumpkins"
my_array = ["pumpkins"]

my_string = tricky_method_str(my_string)
my_array = tricky_method_arr(my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

=begin
To fix that method, we shoud dismember it, it has two returns and we actually
 should have only on siginificative return.
After that, let's reassign the return of the method to the string object.
Now that should work just fine!
=end

=begin
Looking at LS solution, multiple assignment should be great! we still 
have only one return, for both string an array.
=end

def not_so_tricky(string, array)
  string += 'rutabaga'
  array += ['rutabaga']
  
  return string, array
end

my_string = 'pumpkins'
my_array = ['pumpkins']

my_string, my_array = not_so_tricky(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
