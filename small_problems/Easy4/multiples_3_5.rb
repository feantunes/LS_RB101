# Write a method that searches for all multiples of 3 or 5 that lie between 
# 1 and some other number, and then computes the sum of those multiples

def multisum(num)
  mult_arr = (1..num).select { |x| x % 3 == 0 || x % 5 == 0 }
  mult_arr.inject(&:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168