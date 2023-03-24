BLOCK = %w( B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M)

def block_word?(word)
  word = word.upcase
  block = BLOCK.dup
  block.map! { |x| x.split(':') }
  result = block.map { |pair| word.include?(pair.first) && word.include?(pair.last) }
  !result.include?(true)
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('BBBBBBBBATCH') == true