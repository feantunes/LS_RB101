def interleave(arr1, arr2)
  counter = 0
  new_array = []
  loop do 
    break if counter >= arr1.size
  
    new_array << arr1[counter]
    new_array << arr2[counter]
  
    counter += 1
  end
  
  new_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


def interleave2(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave2([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave2([1, 2, 3], ['a', 'b', 'c'])