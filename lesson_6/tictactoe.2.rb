# 1. Display the 3x3 board
# 2. Ask user to mark a square
# 3. Computer to mark a square
# 4. Display the updated board
# 5. If winner, display winner
# 6. If board is full, display tie.
# 7. If neither winner or full, go to #2
# 8. Play again?
# 9. If yes, go to #1
# 10.Goo bye!

require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]] # diagonals

def prompt(msg)
  puts "=>> #{msg}"
end

def joinor(arr, middle=', ', last='or')
  new_name = ''
  arr.each_with_index do |num, idx|
    if idx == arr.size - 1
      new_name += " #{num}"
    elsif idx == arr.size - 2
      new_name += "#{num} #{last}"
    else 
      new_name += "#{num}#{middle}"
    end
  end
  new_name
end


def display_board(brd)
  system 'clear'
  puts ""
  puts "     |     |"
  puts " #{brd[1]}   |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts "-----+-----+-----"
end

def intialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def computer_places_piece!(brd)
  square = nil
  
  # offense first
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end
  
  # defense
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end
  
  # just pick a square
  if !square
    square = empty_squares(brd).sample
  end
  square = 5 if empty_squares(brd).size == 4 && empty_squares(brd).include?(5)
  brd[square] = COMPUTER_MARKER
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))})"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def start_player
  prompt 'Who should start? (Computer/Player)'
  starter = gets.chomp.downcase
  starter.start_with?('c') ? false : true
end

def place_piece!(brd, current_player)
  if current_player
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(current_player)
  !current_player
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end


def detect_winner(brd)

  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
      return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER &&
          brd[line[1]] == COMPUTER_MARKER &&
          brd[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  # this is the same as if brde.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
  # which is the same as if brde.values_at(*line).count(PLAYER_MARKER) == 3
  nil
end

player_score = 0
computer_score = 0

current_player = start_player()

loop do
  board = intialize_board

  loop do
    display_board(board)

    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end
  
  display_board(board)
  
  if detect_winner(board) == 'Computer'
    computer_score += 1
  elsif detect_winner(board) == 'Player'
    player_score += 1
  else
    player_score += 0
  end
  
  if someone_won?(board)
    prompt "#{detect_winner(board)} won! The game is Player #{player_score} X #{computer_score} Computer "
  else
    prompt "it's a tie!"
  end
  
  break if (player_score || computer_score) == 5
  
  prompt "Do you want to play again (Y,N)?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Game over, the result was Player #{player_score} X #{computer_score} Computer"