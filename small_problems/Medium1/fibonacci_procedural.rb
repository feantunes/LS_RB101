def fibonacci(n)
sequence = [1,1]
3.upto(n) { |_| sequence.push(sequence[-1] + sequence[-2]) }
sequence[-1]
end


def ffibonacci(nth)
  sum = 0
  sequence = [1,1]
  while sequence.size < nth
  sequence.push(sequence[-1] + sequence[-2])
  end
  sequence[-1]
end


 #ffibonacci(100)
 #ffibonacci(20) #== 6765
 #ffibonacci(100) == 354224848179261915075
 #ffibonacci(100_001) # => 4202692702.....8285979669707537501
 
 100.times do |x|
   p fibonacci(x+1)
end