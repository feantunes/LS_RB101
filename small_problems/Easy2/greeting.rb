# greeting.rb

puts "What's your name?"
name = gets.chomp

if name.end_with?('!')
  puts "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name.capitalize}."
end

# further exploration with the destructive method #chomp! and #chop!
# the difference is the variable name which is modified after the code.
# unlike the first solution.

puts "What's your name?"
name = gets.chomp!

if name.end_with?('!')
  puts "HELLO #{name.upcase.chop!}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name.capitalize}."
end
