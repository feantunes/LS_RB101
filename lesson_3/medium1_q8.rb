def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

#What's the result of this call?

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

#well, we need to look inside out!

=begin 

rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
rps(rps(rps("rock", "paper"), ROCK), "rock")
rps(rps(PAPER, ROCK), "rock")
rps(PAPER, "rock")

PAPER!
=end
