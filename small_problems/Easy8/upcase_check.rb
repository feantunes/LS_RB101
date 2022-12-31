def uppercase?(string)
  string =~ /[a-z]/ ? false : true
end

p uppercase?('t') # == false
p uppercase?('T') #== true
p uppercase?('Four Score')# == false
p uppercase?('FOUR SCORE')# == true
p uppercase?('4SCORE!') #== true
p uppercase?('') #== true