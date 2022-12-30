 # return an array which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new = arr.select do |hash|
  is_true = []
  hash.select do |_, value|
    is_true << (value.size == value.select { |x| x.even? }.size)
  end
  is_true.all?
end

p new

arr.select do |hsh|
  hsh.each.with_index do |key, value, idx|
    if key == :b
      value[idx] = 1
    end
  end
end

p arr
