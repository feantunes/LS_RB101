my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

=begin
# Line 1 - Method Array#each being called in the outer array. No side effect
and the return value for the method is self. Return assigned to my_array var.
# Line 1-7 block execution on each sub-array. No side-effect and the return
value will be nil because of puts
# Line 2-6 inner block execution on each integer of the sub-array. No side
effect and the return of the block is nil because of puts.
# Line 4 method call puts on integer num - returns nil while printing output

#18
#7
#12
# => [[18, 7], [3, 12]]