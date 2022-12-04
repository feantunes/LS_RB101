WINS = { rock: ['lizard', 'scissors'],
         paper: ['rock', 'spock'],
         scissors: ['paper', 'lizard'],
         lizard: ['spock', 'paper'],
         spock: ['scissors', 'rock'] }

def prompt(message)
  puts "=>> #{message}"
end

def valid_entry?(choice)
  choice.downcase
  WINS.key?(choice.to_sym)
end

def display_winner(player, computer)
  if WINS[player.to_sym].include?(computer)
    prompt('You win!')
  elsif player == computer
    prompt("It's a draw")
  else
    prompt('You lost!')
  end
end

prompt("Welcome to the game! Let's start it!")

player = 0
score_player = 0
score_computer = 0
loop do
  prompt("Choose your entry!(Rock/Paper/Scissors/Lizard/Spock)")

  loop do
    player = gets.chomp!

    case player
    when 'r'  then player = 'rock'
    when 'p'  then player = 'paper'
    when 'sc' then player = 'scissors'
    when 'sp' then player = 'spock'
    when 'l'  then player = 'lizard'
    end

    if valid_entry?(player)
      break
    else
      prompt('This is not a valid choice! Try again!')
    end
  end

  computer = WINS.keys.sample.to_s

  prompt("You chose #{player.capitalize} and computer chose #{computer.capitalize}.")

  display_winner(player, computer)

  if WINS[player.to_sym].include?(computer)
    score_player += 1
  elsif player == computer
    score_player += 0
  else
    score_computer += 1
  end

  prompt("The score now is #{score_player} for you and #{score_computer} for the computer.")

  prompt("Do you want to play again? (Y/N)")
  again = gets.chomp.downcase
  unless again.start_with?('y')
    break
  end
end
