def fizzbuzz(first, last)
  for i in first..last
    if i % 15 == 0
      puts 'FizzBuzz'
    elsif i % 3 == 0
      puts 'Fizz'
    elsif i % 5 == 0
      puts 'Buzz'
    else puts i
    end
  end
end

# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

def fizzbuzz2(first, last)
  for i in first..last
    case 
    when i % (3 * 5) == 0 then puts 'FizzBuzz'
    when i % 3 == 0 then puts 'Fizz'
    when i % 5 == 0 then puts 'Buzz'
    else puts i
    end
  end
end

fizzbuzz2(1,15)