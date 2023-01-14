def diamond(n)
  lines = []
  (1..n).step(2) { |num| lines.push(num) }
  lines.each { |x| puts "#{('*'*x).center(n)}" }
  lines[0..-2].reverse_each { |x| puts "#{('*'*x).center(n)}" }
end

p diamond(9)


def diamond_gap(n)
  lines = []
  (1..n).step(2) { |num| lines.push(num) }
  lines.each { |x| puts "#{('*'*x).center(n)}" }
  lines[0..-2].reverse_each { |x| puts "#{('*'*x).center(n)}" }
end


p diamond_gap(9)