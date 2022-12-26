def word_cap(string)
  string.split.map { |word| word.capitalize }.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


def word_cap2(string)
  new_string = string.split.map(&:downcase)
  new_string = new_string.each { |word| word[0] = word[0].upcase } 
  new_string.join(" ")
end

p word_cap2('four score and seven') == 'Four Score And Seven'
p word_cap2('the javaScript language') == 'The Javascript Language'
p word_cap2('this is a "quoted" word') == 'This Is A "quoted" Word'


def word_cap3(string)
  string.gsub(/[A-Z]/) { |s| s.downcase }
end

