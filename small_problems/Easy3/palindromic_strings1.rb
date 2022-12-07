def palindrome?(string)
  string == string.reverse
end

def palindrome_arr?(arr)
  arr == arr.reverse
end

# def palindrome_string_arr(object)
#  if object.class == String
#    object


p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

p palindrome?([1,2,1])