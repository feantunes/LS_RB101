def leading_substrings(string)
  total_substrings = []
  string.size.times do |idx| 
    total_substrings << string[0..idx]
  end
  total_substrings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']