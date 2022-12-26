def swapcase(string)
  string.gsub(/\w/) { |s| s > s.upcase ? s.upcase : s.downcase }
end

p swapcase('CamelCase') #== 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'