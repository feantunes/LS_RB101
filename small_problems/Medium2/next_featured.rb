# odd number
# multiple of 7
# digits occur only once
# returns the next featured number from num integer

def featured(num)
  last = 9_999_999_999

  (num + 1..last + 1).each do |n|
    if n.odd? && (n % 7 == 0) && (n.digits.uniq.size == n.digits.size )
     return n
     break
    else
      if n.digits.size > 10
        puts "There is no possible number that fulfills those requirements" 
        break
      else
        next
      end
    end
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) #== 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(1023457869)# == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements