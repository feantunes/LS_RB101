def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

#how can we simplify the method above without changing its return value?

def color_valid_2(color)
  %w(blue green).include?(color)
end

a = 'blue'
b = 'green'
c = 'yellow'
d = 'grey'

p color_valid(a)
p color_valid(b)
p color_valid(c)
p color_valid(d)
p color_valid_2(a)
p color_valid_2(b)
p color_valid_2(c)
p color_valid_2(d)

=begin 
looking at the LS solution, that's actually better and simple
the return is a boolean. 
=end
def color_valid_ls(color)
 color == "blue" || color == "green"
end