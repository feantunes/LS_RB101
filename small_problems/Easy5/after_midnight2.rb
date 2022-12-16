def after_midnight(string)
  hour = string[0..1].to_i
  minutes = string[3..4].to_i
  
  if hour == 24
    total = 0
  else
    total = (hour * 60) + minutes
  end
end

def before_midnight(string)
  hour = string[0..1].to_i
  minutes = string[3..4].to_i
  
  if hour.zero? && minutes.zero?
    total = 0
  else
    total = ((hour * 60) + minutes - 1440) *-1
  end
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

p after_midnight('00:00') 
p before_midnight('00:00') 
p after_midnight('12:34') 
p before_midnight('12:34') 
p after_midnight('24:00') 
p before_midnight('24:00') 
p after_midnight('00:30') 
p before_midnight('00:30') 