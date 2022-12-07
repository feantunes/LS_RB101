# Build a program that asks a user for the length and width of a room in meters 
# and then displays the area of the room in both square meters and square feet.

puts 'Enter the length of the room in meters:'
room_length = gets.chomp.to_f.round(2)
puts 'Enter the width of the room in meters:'
room_width = gets.chomp.to_f.round(2)

room_area = (room_length*room_width).round(2)
room_area_feet = (room_area * 10.7639).round(2)

puts "The area of the room is #{room_area} " + \
     "square meters (#{room_area_feet} square feet)."
