my_numbers = [1, 4, 3, 7, 2, 6]


def double_odd_idx(numbers)
  double_numbers = []
  counter = 0
  
  loop do 
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    double_numbers << current_number

    counter += 1
  end
  
  double_numbers
end

p double_odd_idx(my_numbers)