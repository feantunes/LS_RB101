 # use the map method to return a new array identical in structure to the original 
 # but where the value of each integer is incremented by 1.

require 'pry'
require 'pry-byebug'

array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new = array.map do |hash|
  hash.transform_values { |value| value + 1 }
end

p new

new1 = array.map do |hsh|
  new_hash = {}
  hsh.each do |key,value|
    new_hash[key] = value + 1
  binding.pry
  end
  new_hash
end
p new1
