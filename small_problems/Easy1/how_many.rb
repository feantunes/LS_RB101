# Write a method that counts the number of occurrences of each element
# in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  
  while arr.length > 0
  new_array = arr.select { |type| type == arr[0] } 
  
  puts "#{new_array[0]} => #{new_array.length}"
  arr.delete(new_array[0])
  end
end

count_occurrences(vehicles)


#LS colleague solution: declaring a new Hash with default value 0.
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)

  repetition = Hash.new(0)
  arr.each do |x|
    x.capitalize!
    repetition[x]+= 1
  end
  repetition.each do |key, value |
    puts "#{key} => #{value}"
  end
end

count_occurrences(vehicles)

# Further exploration = how to avoid the differences between Truck/truck
# solution: #capitalize on the iteration before adding to the hash.

vehicles = [
  'car', 'car', 'truck', 'caR', 'SUV', 'TRUCK',
  'motorcycle', 'MotorCycle', 'CAR', 'truck'
]

def count_occurrences(arr)
  repetition = Hash.new(0)
  arr.each do |x|
    x.capitalize!
    repetition[x]+= 1
  end
  repetition.each do |key, value |
    puts "#{key} => #{value}"
  end
end

count_occurrences(vehicles)