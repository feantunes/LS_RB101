# Write a method that takes two arguments, a string and a positive integer, 
# and prints the string as many times as the integer indicates.

def repeat(word, repetition)
  if repetition >= 1
  repetition.times { puts word }
  else
  puts 'The number of repetitions must be greater than 0, try again!'
  end
end

repeat('Hello', 3)
repeat('Hello', 0)
repeat('Hello', -1)