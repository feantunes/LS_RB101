require 'pry'

def mil_lights(n)
  lights = Hash.new(0)
  (1..n).each { |x| lights[x] = 1 }
  n.times do |n|
    lights.each do |k,v| 
      if (k % (n+1)) == 0
        lights[k] *= -1
      else
        next
      end
    end
  end
  lights.select { |k,v| v == -1 }.keys
end

p mil_lights(1000)


def mil_lights(n)
  lights = Hash.new
  (1..n).each { |x| lights[x] = -1 } 
  n.times do |n|
    lights.each { |k,v| lights[k] *= -1 if (k % (n+1)) == 0 }
  end
  lights.select { |k,v| v == 1 }.keys
end
p mil_lights(1000)