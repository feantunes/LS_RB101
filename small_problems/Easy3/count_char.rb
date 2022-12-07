puts "Please write word or multiple words:"
word = gets.chomp

characters = word.split.join.size

puts "There are #{characters} characters in \"#{word}\"."
