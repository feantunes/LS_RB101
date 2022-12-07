# Solution 1
numbers = 0

while numbers < 100
  if numbers % 2 != 0
    puts numbers
    numbers+= 1
  else
    numbers+= 1
  end
end

# Solution 2
for i in 1..99
  puts i if i % 2 != 0
end

# Solution 3
num_arr = Array.new(99) { |i| i + 1 }
puts num_arr.select { |x| x % 2 != 0 }
