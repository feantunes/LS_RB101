# Given the array below, use loop to remove and print each name from first to last. 
# Stop the loop once names doesn't contain any more elements.


names = ['Sally', 'Joe', 'Lisa', 'Henry']

def empty_array(array)
  loop do 
    puts array.shift
  break if array.size == 0
  end
end

empty_array(names)

names = ['Sally', 'Joe', 'Lisa', 'Henry']

def empty_array_rev(array)
  loop do 
    puts array.pop
  break if array.size == 0
  end
end

empty_array_rev(names)