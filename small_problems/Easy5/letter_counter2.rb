# modify the previous counter to exclude non-letter when determining word sizes.


def word_sizes(string)
  counter = Hash.new(0)

  string.split.each do |word|
    word = word.gsub(/\W/, "")
    counter[word.size]+= 1
  end

  counter
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

# different solution utilizing String#count method:

def word_sizes2(string)
  counter = Hash.new(0)

  string.split.each do |word|
    counter[word.count('A-Za-z')]+= 1
  end

  counter
end

p word_sizes2('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes2('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes2("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes2('') == {}