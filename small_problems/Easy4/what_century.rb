=begin 
Write a method that takes a year as input and returns the century.
eturn value should be a string that begins with the century number,
and ends with st, nd, rd, or th
=end

def century(year)
  if year % 100 == 0
    my_century = (year / 100).to_s
  else
    my_century = ((year / 100) + 1).to_s
  end

  if my_century.end_with?('11','12','13')
    my_century+= 'th'
  elsif my_century[-1] == '1'
    my_century+= 'st'
  elsif my_century[-1] == '2'
    my_century+= 'nd'
  elsif my_century[-1] == '3'
    my_century+= 'rd'
  else
    my_century+= 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

