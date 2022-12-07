def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def power(num, power)
  num**(power-2) * multiply(num, num)
end

p square(5) == 25
p square(-8) == 64

p power(5,3)
p power(5,2)
p power(5,1)
p power(5,0)
p power(5,4)