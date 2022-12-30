#now break this down!

[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

=begin 
# Line 1 method .map performed in the outer array. return [[2,4],[6,8]]
Line 3-7 outer block exec where each sub-array is passed to a second call
Line 4-6 inner block on each sub-array - return value of the block is the
integer * 2, and this determine the return of the sub-array. 


# [[2,4],[6,8]]