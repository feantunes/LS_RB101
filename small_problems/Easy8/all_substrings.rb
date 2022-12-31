def leading_substrings(string, init=0)
  total_substrings = []
  string.size.times do |idx| 
    total_substrings << string[init..idx]
  end
  total_substrings
end

def substrings(string)
  result = []
  string.chars.each.with_index do |_, idx|
    result += leading_substrings(string, idx)
  end
  result.delete('')
  result
end


p substrings('abcde')  == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]