=begin
Describe the difference between ! and ? in Ruby. And explain what would happen 
in the following scenarios:

We use ! when we expect the object to be changed with that method. 

1. what is != and where should you use it?

This means not equal, we use it to express an inequality, it's the opposite
of == 

2. put ! before something, like !user_name

This is the NOT operator, when put in front of a boolean, changes to the opposite

3. put ! after something, like words.uniq!

on the example above, there's the method Array.uniq that does not mutate the caller
while Array#uniq! mutates the caller.

4. put ? before something

could be the ternary operator something ? true : false

5. put ? after something

usually when writing a method and we want it to evaluate as a boolean, we write
like this: def is_prime?(num)


6. put !! before something, like !!user_name

This is known as the double-bang. one ! will return the opposite of the boolean
value of the operand. together !! it will convert the value to a boolean! in this
case the object user_name will be converted to the boolean true. 
=end