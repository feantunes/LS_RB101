require 'pry'
def multiply_all_pairs(arr_1, arr_2)
  c_1 = 0
  c_2 = 0
  return_arr = []

  loop do
    until c_2 == arr_1.size
      p c_1
      p c_2
      return_arr << arr_1[c_1] * arr_2[c_2]
      # binding.pry
      if c_2 == arr_2.size
        c_1 += 1
        c_2 = 0
      end
      c_2 += 1
    end
    break
  end

return_arr.sort
end

p multiply_all_pairs([1,2],[1,2])