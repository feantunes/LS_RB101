s = 'abc'
puts s.public_methods.inspect

# This will print all the public methods availabe for String and also the
# parent class Objects and so on. 

# How would you modify this code so only the String methods show?

# public_methods is a instance method from the Object class. 
# It is defined by public_methods(all=true) -> the default is true and will
# return all the methods availble to the object. if set this to false, 
# only the methods in the receiver (this case String) will be listed.

s = 'abc'q
puts s.public_methods(false).inspect