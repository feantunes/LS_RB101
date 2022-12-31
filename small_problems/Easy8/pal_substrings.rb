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

def palindromes(string)
  # FURTHER Exp new = substrings(string).map { |x| x.delete("^[a-z]").downcase }
  new.select { |x| x == x.reverse && x.size > 1}
end


p palindromes('abcd') == []
p palindromes('madam') #== ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') #== [
#  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#  '-madam-', 'madam', 'ada', 'oo'
#]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]