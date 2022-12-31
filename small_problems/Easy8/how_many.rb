vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  result = Hash.new(0)
  array.each { |x| result[x] += 1 }
  result.each { |key, value| puts "#{key} => #{value}" }
end


count_occurrences(vehicles)

