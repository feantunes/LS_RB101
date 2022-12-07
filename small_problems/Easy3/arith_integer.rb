puts "==> Enter the first number:"
first = gets.to_i
puts "==> Enter the second number:"
second = gets.to_i

operations = [ '+', '-', '*', '/', '%', '**']

operations.each do |op|
  calc = first.public_send(op,second)
  puts "==> #{first} #{op} #{second} = #{calc}"
end