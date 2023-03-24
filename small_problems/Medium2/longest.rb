require 'yaml'
BOOK = YAML.load_file('example.txt')
new_book = File.read('pg84.txt')


def longest_sentence(text)
  text = text.split(/(?<=[.?!])/)
  text.sort_by! { |sentence| sentence.split.size }
  puts "#{text[-1].split.size}"
  puts "#{text[-1]}"
end

longest_sentence(BOOK)
longest_sentence(new_book)