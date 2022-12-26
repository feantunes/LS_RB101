def halvsies(arr)
  arr.partition { |num| arr.index(num) <= (arr.size - 1) / 2 }
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
p halvsies([1,2,3,4,5,6,7])