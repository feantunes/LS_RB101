STRINGS = { 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7',
            8 => '8', 9 => '9', 0 => '0' }

def integer_to_string(int)
  str = int.digits.reverse.map { |num| STRINGS[num] }
  str.join
end

def signed_integer_to_string(num)
  if num == 0
    integer_to_string(num)
  elsif num > 0
    '+' + integer_to_string(num)
  else
    '-' + integer_to_string(-num)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'