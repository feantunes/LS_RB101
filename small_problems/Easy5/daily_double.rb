
def crunch(string)
  letters = string.scan(/./)
  crunched = []
  letters.each_with_index do |letter, idx| 
    if letters[idx+1] != letters[idx]
      crunched << letters[idx]
    end
  end
  crunched.join
end

p crunch('ddaaiillyy ddoouubbllee') 
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''