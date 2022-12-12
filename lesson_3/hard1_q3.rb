def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

#What will be printed in this code above?
=begin
The variables won't be affect in the method because the method will not
alter the variables in the outer scope. The assignments are going to be
confined in the method because they are not destructive. 
The output will be as expected with the corresponding variable names.
=end

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

#how about this method above? What will happen?
=begin
Same as above, nothing will happen because there will no changes to the 
outer scope. simple assignments within the method will create a local 
variable inside the method and will be it. Same result as expected in the 
first exercise
=end

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

#how about this one, sir know it all???
=begin
Well, this one is different, look at that, we are calling the method 
String#gsub! and that method is destructive! it will change the reference.
the variable inside the scope has the same reference from the outer scope
some methods are destructive and change the variable in the outer scope,
which is the case now. some other methods create a new reference and don't
change the variable in the outer scope. like if it was #gsub instead of
gsub!

=> these senteces will be printed:
one is  'two'
two is  'three'
three is  'one' 
=end

