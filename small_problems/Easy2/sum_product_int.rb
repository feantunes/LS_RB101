loop do
  number = ''
  operation = ''

  loop do
    puts '>> Please enter an integer greater than 0:'
    number = gets.to_i
    break if number.positive?
  
    puts 'This is not a valid number, try again!'
  end

  loop do
    puts " >> Enter 's' to compute the sum, 'p' to compute the product."
    operation = gets.chomp.downcase
    break if %w(s p).include?(operation)
  
    puts 'This is not a valid operation. Try again!'
  end

  sum = (1..number).inject(&:+)
  product = (1..number).inject(&:*)

  if operation == 's'
    puts "The sum of the integers between 1 and #{number} is #{sum}."
  else
    puts "The product of the integers between 1 and #{number} is #{product}."
  end

  puts 'Do you want to try a new number? (Y/N)'
  again = gets.chomp.downcase
  break unless again.start_with?('y')
end
