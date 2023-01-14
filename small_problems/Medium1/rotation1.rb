
def rotate_array(array)
  arr = array.clone
  arr += [arr.shift]
end

p rotate_array([7, 3, 5, 2, 9, 1]) #== [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) #== ['b', 'c', 'a']
p rotate_array(['a'])# == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) # == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

def rotate_string(str)
  str[1..-1] + str[0]
end

p rotate_string('fernando')

def rotate_integer(int)
  number_arr = int.digits.reverse
  rotate = number_arr[1..-1] + [number_arr[0]]
  rotate.join.to_i
end

p rotate_integer(12345)