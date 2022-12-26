def multiply_list(arr1, arr2)
  multiplied = []
  counter = 0
  until counter >= arr1.size
    multiplied << arr1[counter] * arr2[counter]
    counter += 1
  end
 multiplied
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

def multiply_list2(arr1, arr2)
 arr1.map.with_index { |x, idx| x * arr2[idx] }
end
  
p multiply_list2([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

def multiply_list3(arr1, arr2)
 arr1.zip(arr2).map { |a1, a2|  a1 * a2  }
end

p multiply_list3([3, 5, 7], [9, 10, 11]) # == [27, 50, 77]