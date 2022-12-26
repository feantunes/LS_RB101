#using built-in methods
def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# now a second approach with loops
def merge2(arr1, arr2)
  merged = arr1 + arr2
  new_array = []
  merged.each do |x|
    new_array << x if !new_array.include?(x)
  end
  new_array
end

p merge2([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]