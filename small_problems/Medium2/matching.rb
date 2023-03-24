def balanced?(string)
  counter = 0
  parenthesis = string.chars.select { |x| x == '(' || x == ')' }
  parenthesis.each do |x|
    if x == '('
      counter+= 1
    else 
      counter-= 1
    break if counter < 0
    end
  end
  counter.zero?
end


p balanced?('What (is) this?') #== true
p balanced?('What is) this?') #== false
p balanced?('What (is this?') # == false
p balanced?('((What) (is this))?') #== true
p balanced?('((What)) (is this))?') #== false
p balanced?('Hey!') #== true
p balanced?(')Hey!(') #== false
p balanced?('What ((is))) up(') #== false