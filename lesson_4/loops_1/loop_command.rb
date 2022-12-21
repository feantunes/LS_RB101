# Modify the code below so the loop stops iterating when the user inputs 'yes'.


loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
  puts "Incorrect answer. Type 'yes' to stop looping!"
end



loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer =~ /y/i
  puts "Incorrect answer. Type 'yes' to stop looping!"
end