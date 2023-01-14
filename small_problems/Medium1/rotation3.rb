def rotate_array(array)
  arr = array.clone
  arr += [arr.shift]
end

def rotate_rightmost_digits(num, digits)
  num_size = num.digits.size
  num = num.digits.reverse
  num = num[0..-1-digits] + rotate_array(num[-digits..-1])
  num.join.to_i
end

def max_rotation(num)
  counter = num.digits.size
  while counter >= 1 
    num = rotate_rightmost_digits(num, counter)
    counter -= 1
  end
  num
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845