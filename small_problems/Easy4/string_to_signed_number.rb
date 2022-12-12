def string_to_signed_integer(string)
  count = 0
  num = 0
  new_string = string
  if new_string.start_with?('-','+')
    new_string = new_string.delete("+-")
  end

  loop do
    break if count == new_string.length 
    char = %w(0 1 2 3 4 5 6 7 8 9).index(new_string[count])
    num+= char*10**(new_string.length-count-1)
    count+= 1
  end

  if string.start_with?('-')
    num * (-1)
  else
    num
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end