def repeater(string)
  string.chars.map { |x| x+x }.join
end


p repeater('Hello') # == "HHeelllloo"
p repeater("Good job!") # == "GGoooodd  jjoobb!!"
p repeater('') #== ''