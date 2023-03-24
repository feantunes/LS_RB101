# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

# Examples:

def least_common_char(string)
  letters = string.downcase.chars
  letters.min_by { |letter| letters.count(letter) }
end

# The tests above should print "true".

p least_common_char("Hello World") #== "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
p least_common_char("Mississippi") #== "m"
p least_common_char("Happy birthday!") #== a
p least_common_char("aaaaaAAAA") #== 'a'

# The tests above should print "true".