# including either the select or reject method, to return a new array identical in 
# structure to the original but containing only the integers that are multiples of 3

arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

def mult3(arr)
  arr.map do |item|
    item.select { |x| x % 3 == 0 }
  end
end

p mult3(arr)