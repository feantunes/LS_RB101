# Write a method that takes one argument, a string, and 
# returns a new string with the words in reverse order.

def reverse_sentence(sentence)
  string = String.new
 sentence.split.reverse_each do |word|
   string += "#{word} "
  end
  string.delete_suffix(' ')
end

puts reverse_sentence('Hello World')
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# now the easy solution form the exercise (I was almost there, should have
# searched for the method Array#join a little bit more.)

def reverse_sentence(string)
  string.split.reverse.join(' ')
end