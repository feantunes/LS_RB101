#def palindromic_number?(num)
#  num.to_s == num.to_s.reverse
#end

def palindromic_number?(x)
  original = x
  res = 0
  while x > 0
    res *= 10
    res += (x % 10)
    x /= 10
  end
  res == original
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true