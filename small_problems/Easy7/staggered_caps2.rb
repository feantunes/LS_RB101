def staggered_case(string)
  counter = 0
  new = string.chars.each do |x|
    if x =~ /\d/ || x == ' '
      next
    elsif counter.odd?
      x.downcase!
      counter += 1
    else
      x.upcase!
      counter += 1
    end
  end
  new.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'