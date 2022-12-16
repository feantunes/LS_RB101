def swap(string)
  string_arr = string.split.map do |word|
    first = word[0]
    last = word[-1]
    word[0] = last
    word[-1] = first
    word
  end
  string_arr.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
p swap('Oh what a wonderful day it is')

=begin
we could use : 
word[0], word[-1] = word[-1], word[0]
