#break this down:

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

# 1. method Array#Map being called on the outer array, return value will be a
# new array, [1,3], determined by the method #first performed in the sub-array
# 1-3 block execution on each sub-array. No side-effect and used by the #map
# 2. Method #puts used on arr.first integer will print 1 and 3 as side effect. ret nil
# 3. Array#first used to determine the return value of the block and on map.



