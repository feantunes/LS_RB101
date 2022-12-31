
def get_grade(score1, score2, score3)
  mean = (score1 + score2 + score3) / 3
  case
  when mean < 60 then 'F'
  when mean < 70 then 'D'
  when mean < 80 then 'C'
  when mean < 90 then 'B'
  when mean > 90 then 'A' 
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"