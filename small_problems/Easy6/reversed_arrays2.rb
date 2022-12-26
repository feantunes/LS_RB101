def reverse_arrays(list)
  new_list = list.clone
  list_start = 0
  list_end = list.size - 1
  
  loop do
    break if list.length == 0
    
    new_list[list_start], new_list[list_end] = new_list[list_end], new_list[list_start]
    break if (list.size / 2) == list_start
    
    list_start += 1
    list_end -= 1
  end
  
  new_list
end

list = %w(a b e d c)
p list.object_id
p reverse_arrays(list).object_id

list = ['abc']
p reverse_arrays(list)
list = []
p reverse_arrays(list)

def reverse(array)
  array.each_with_object([]) do |arr, obj|
    obj.prepend(arr)
  end
end

list = %w(a b e d c)
p reverse(list)


def reverse2(arr)
  arr.inject([], :prepend)
end

list = %w(a b e d c)
p reverse2(list)