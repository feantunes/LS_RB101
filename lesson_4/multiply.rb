def multiply(numbers, factor)
  counter = 0
  multiplied = []
  
  loop do
    break if counter == numbers.size
    
    current_number = numbers[counter]
    current_number *= factor
    multiplied << current_number
    
    counter += 1
  end
  
  multiplied
end
  

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]