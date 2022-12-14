def letter_case_count(string)
  string.chars.each_with_object({lowercase: 0, uppercase: 0, neither:0}) do |letter, (key, value)|
    if letter =~ /[a-z]/
      key[:lowercase] += 1
    elsif letter =~ /[A-Z]/
      key[:uppercase] += 1
    else
      key[:neither] += 1
    end
  end
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }