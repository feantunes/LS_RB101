def rotate_array(array)
  arr = array.clone
  arr += [arr.shift]
end

def rotate_rightmost_digits(num, digits)
  num_size = num.digits.size
  num = num.digits.reverse
  num = num[0..num_size-digits-1] + rotate_array(num[-digits..-1])
  num[-num_size..-1].join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917


def rotate_rightmost_digits2(num, digits)
  num_size = num.digits.size
  num = num.digits.reverse
  num = num[0..-1-digits] + rotate_array(num[-digits..-1])
  num.join.to_i
end

p rotate_rightmost_digits2(735291, 1) == 735291
p rotate_rightmost_digits2(735291, 2) == 735219
p rotate_rightmost_digits2(735291, 3) == 735912
p rotate_rightmost_digits2(735291, 4) == 732915
p rotate_rightmost_digits2(735291, 5) == 752913
p rotate_rightmost_digits2(735291, 6) == 352917