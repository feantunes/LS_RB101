def print_in_box(string)
  puts "+#{'-'*(string.length + 2)}+"
  puts "|#{' '*(string.length + 2)}|"
  puts "| #{string} |"
  puts "|#{' '*(string.length + 2)}|"
  puts "+#{'-'*(string.length + 2)}+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')


# for further exploration, see if we can use size and select to go on different lines
# we'll see tomorrow.
  
def print_in_box2(string)
  open_close = "+#{'-'*(string.length + 2)}+"
  middle = "|#{' '*(string.length + 2)}|"
  main = "| #{string} |"
  indexes = [0]
  blank_index = 0
  cut = [0]
  cutting_at = 0
  
  #find indexes where we have whitespaces and return an array.
  loop do 
    blank_index = string.index(" ", blank_index+1)
    break if blank_index == nil
    indexes << blank_index
  end
  
  #find cutting points selecting a new array with places to cut. 
  cut_counter = 1
  loop do
  cutting_at = indexes.select { |x| x < 76*cut_counter }.last
  break if 78*cut_counter > string.size
  cut << cutting_at
  cut_counter+= 1
  p cut
  end
  
#print if there's no cut  
if cut == [0]
  puts "+#{'-'*(string.length + 2)}+"
  puts "|#{' '*(string.length + 2)}|"
  puts "| #{string} |"
  puts "|#{' '*(string.length + 2)}|"
  puts "+#{'-'*(string.length + 2)}+"
else
  # printing from places to cut, padding at 80 for everything then.
  counter = 0
  puts "+#{'-'*(80)}+"
  puts "|#{' '*(80)}|"
  
  loop do 
    new_string = string[cut[counter]..cut[counter+1]]
    puts "|" + new_string.center(80) + "|"
  counter+= 1
  break if counter == cut.size
  end
  puts "|#{' '*(80)}|"
  puts "+#{'-'*(80)}+"
  end
    
end

print_in_box2('To boldlyoldddce')

# My problem does not resolve the issue if there are no whitespaces on the text. too bad.
# need to write down to have straigth cuts if string > 76, not difficult though.