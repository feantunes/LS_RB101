#What will happen?

if false
  greeting = "hello world"
end

greeting

# It'll say the variable is not assigned to anything. 
=begin
Well, I'm wrong, when you initialize a variable within a if clause, 
even if that clause is not initiated, Ruby will initialize that variable
to nil. Therefore greeting = nil

