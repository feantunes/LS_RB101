# Write a method that takes a positive integer, n, as an argument, and displays
# a right triangle whose sides each have n stars. The hypotenuse of the triangle
# (the diagonal side in the images below) should have one end at the lower-left 
# of the triangle, and the other end at the upper-right.

def triangle(size)
  counter = 1
  loop do
    break if counter > size
    puts "#{('*'*counter).rjust(size)}"
    
    counter += 1
  end
end

# triangle(9)

def triangle_rotation(size, rotation=1)
  size.times do |x|
    case rotation
    when 1 then puts "#{('*' * (x+1)).rjust(size)}"
    when 2 then puts "#{('*' * (size-x))}"
    when 3 then puts "#{(' ' * (size-x-1)).rjust(size, '*')}"
    when 4 then puts "#{('*' * (size - x)).rjust(size)}"
    end
  end
end

triangle_rotation(9)
triangle_rotation(9, 2)
triangle_rotation(9, 3)
triangle_rotation(9, 4)