# retire.rb

require 'Date'

puts 'What is your age?'
current_age = gets.to_i
puts 'At what age would you like to retire?'
retirement_age = gets.to_i

this_year = Date.today.year
retirement_year = this_year + (retirement_age - current_age)
years_working = retirement_year - this_year

puts "It's #{this_year}. You will retire in #{retirement_year}." + \
     " You have only 40 years of work to go!"
