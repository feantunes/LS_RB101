
def bubble_sort!(arr)
  loop_counter = 0
  loop do
    arr.each_with_index do |_, idx|
      break if idx == arr.size - 1
      if arr[idx] > arr[idx + 1]
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
      end
    end
    loop_counter += 1
    break if loop_counter == arr.size
  end
  arr
end

#optimized version!

def bubble_sorts!(arr)
  counter = 0
  loop do
    arr[counter..-1].each_with_index do |_, idx|
      break if idx == arr.size - 1
      if arr[idx] > arr[idx + 1]
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
      end
    end
    counter += 1
    break if counter == arr.size
  end
  arr
end


array = [5, 3]
p bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
#optmized

array = [5, 3]
p bubble_sorts!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sorts!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sorts!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)