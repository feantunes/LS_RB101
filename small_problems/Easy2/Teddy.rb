# Build a program that randomly generates and prints Teddy's age. To get the age, 
# you should generate a random number between 20 and 200.

# Using Array#sample
age = Array.new(181) { |i| i + 20 }
puts "Teddy is #{age.sample} years old"

# Using Kernel#rand
def age_display(name, age)
  if name == ''
  puts "Teddy is #{age} years old!"
  else
  puts "#{name} is #{age} years old!"
  end
end

puts "What's the name?"
name = gets.chomp
new_age = rand(20..200)

age_display(name, new_age)