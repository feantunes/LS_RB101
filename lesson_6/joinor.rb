def joinor(arr, middle=', ', last='or')
  new_name = ''
  arr.each_with_index do |num, idx|
    if idx == arr.size - 1
      new_name += " #{num}"
    elsif idx == arr.size - 2
      new_name += "#{num} #{last}"
    else 
      new_name += "#{num}#{middle}"
    end
  end
  new_name
end


p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"