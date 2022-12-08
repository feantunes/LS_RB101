# Shorten the following sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.slice!('Few things in life are as important as ')
p advice

# If we use the method String#slice with the substring as argument 
# the return will be a new string(the same substring) and the original string 
# will remain unchanged.

# or the book solution

advice.slice!(0, advice.index('house'))