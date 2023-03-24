require 'date'

def friday_13th(year)
  unlucky_days = 0
  (1..12).each do |month| 
    Date.new(year, month, 13).friday? ? unlucky_days += 1 : next
  end
  unlucky_days
end


p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
p friday_13th(2022)