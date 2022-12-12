#convert string to number without using to_i method! OMG.


def string_to_integer(string)
  count = 0
  num = 0
  
  loop do
  break if count == string.length 
  char = %w(0 1 2 3 4 5 6 7 8 9).index(string[count])
  num+= char*10**(string.length-count-1)
  count+= 1
  end
  num
end

p string_to_integer('4321') == 4321
string_to_integer('570') == 570

p string_to_integer('45434')