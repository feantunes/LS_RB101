def to_weird_case(string)
  array_of_strings = string.split
  weird = array_of_strings.map.with_index do |substring, index|
    if (index + 1) % 3 == 0
      substring.chars.map.with_index do |letters, idx| 
        if (idx + 1) % 2 == 0
          letters.upcase
        else
          letters
        end
      end.join
    else
      substring
    end
  end
  weird.join(' ')
end

p to_weird_case('Lorem Ipsum is simply dummy text of the printing')# == #'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'