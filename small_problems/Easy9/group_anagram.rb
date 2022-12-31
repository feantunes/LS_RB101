words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
loop do
  counter = 0
  array = []
  current_name = words[0]
  array << current_name
  counter += 1
    loop do 
      if words[counter].chars.sort == array[0].chars.sort
        array << words[counter]
        counter += 1
      else
        counter +=1
      end
      break if counter == words.size
    end
    p array
    words = words - array
    break if words.size == 0
  end
  
=begin
["demo", "dome", "mode"]
["neon", "none"]
#(etc)
=end