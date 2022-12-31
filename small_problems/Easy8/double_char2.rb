def double_consonants(string)
  double = []
  string.chars.each do |char| 
    if char =~ /[A-Za-z]/ && char =~ /[^aeiou]/
      double << char << char
    else
      double << char
    end
end
  double.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""