def staggered_case(string)
  new = string.chars.map.with_index do |s, idx|
    if idx.even?
      s.upcase
    else
      s.downcase
    end
  end 
  new.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'



def staggered_case(string)

  new = string.chars.each_with_index do |x, idx|
    if x.include?("[/0-9/] ")
      next
    elsif idx.even?
      x.upcase!
    else
      x.downcase!
    end
  end
  new.join
end