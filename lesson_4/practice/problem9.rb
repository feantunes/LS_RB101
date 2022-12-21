words = "the flintstones rock"

def titleize(string)
  string = string.split.each do |word|
    word[0] = word[0].upcase
  end
  string.join(' ')
end

p titleize(words)
p words