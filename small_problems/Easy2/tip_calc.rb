# Tip calculator 

puts 'How much is the bill?' 
bill = gets.to_f
puts 'What is the tip percentage?'
percentage = gets.to_f

tip = bill * (percentage / 100)
total = bill + tip

puts "The tip is #{format("$%#.2f", tip)}"
puts "The total is #{format("$%#.2f", total)}"