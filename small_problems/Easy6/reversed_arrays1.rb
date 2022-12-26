# method takes an array as an argument, reverses its elements in place
# and return the same array object

#

def reverse_arrays!(list)
  list_start = 0
  list_end = list.size - 1
  
  loop do
    break if list.length == 0
    
    list[list_start], list[list_end] = list[list_end], list[list_start]
    break if (list.size / 2) == list_start
    
    list_start += 1
    list_end -= 1
  end
  
  list
end

list = %w(a b e d c)
p list.object_id
p reverse_arrays!(list).object_id

list = ['abc']
p reverse_arrays!(list)
list = []
p reverse_arrays!(list)

