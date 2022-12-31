def sequence(int)
  seq = []
  int.times { |x| seq << x+1 }
  seq
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-1)