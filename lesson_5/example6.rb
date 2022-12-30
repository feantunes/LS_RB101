[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]

=begin
# 1. select method on the outer array. The output will depend on the block
being executed. 
# 2. each onject, which is a Hash, is passed to the #all? method, which 
returns true or false if all the elements meet the criteria.
The first hash returns false and the second hash returns true. This return
will be used by the #select method to determine its return
To be explained: the value is a string, and we are comparing the index 0 of
the string with the key, which is a symbol transformed to a string. 
the first element of the hash is ok,  'a' == 'a' but the second is not
since 'b' != 'e', therefore the return is false on the first iteration and
true on the second iteration. These returns are used on the .select method.

Therefore, the first element is falsy, and will not be part of the return
while the second is truty. That's why the return of the expression is 
# => [{ :c => "cat" }]
