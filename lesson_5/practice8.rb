hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], 
      fourth: ['over', 'the', 'lazy', 'dog']}
      
# Using the each method, write some code to output
# all of the vowels from the strings.

hsh.each do |key, value| 
  value.each do |word|
    puts word.delete("^/aeiou/") #can add .chars in the end here to have sep lines
  end
end 

p hsh