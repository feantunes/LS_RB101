numbers = []
counter = 1

until counter > 5
puts "==> Enter the ##{counter} number:"
  number = gets.to_i
  numbers << number
  counter += 1
end

puts '==> Enter the last number:'
last = gets.to_i

if numbers.include?(last)
  puts  "The number #{last} appears in #{numbers}" 
else
  puts "The number #{last} does not appear in #{numbers}"
end