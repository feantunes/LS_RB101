def word_sizes(string)
  counter = Hash.new(0)

  string.split.each do |word|
    counter[word.size]+= 1
  end

  counter
end


p word_sizes('Four score and seven.') 
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}