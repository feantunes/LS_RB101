DECK = { hearts: { ace: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9, ten: 10, jack: 10, queen: 10, king: 10 },
         diamonds: { ace: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9, ten: 10, jack: 10, queen: 10, king: 10 },
         clubs: { ace: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9, ten: 10, jack: 10, queen: 10, king: 10 },
         spades: { ace: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9, ten: 10, jack: 10, queen: 10, king: 10 } }

GAME_MAX = 21
DEALER_MIN = 16

def prompt(string)
  puts "=>> #{string}"
end

def deal_cards!(deck)
  suits = deck.keys.sample
  value = deck.values.sample.to_a.sample
  deck[suits].delete_if { |k, _| k == value[0] }
  [[suits, value]]
end

def player_start!(deck)
  deal_cards!(deck) + deal_cards!(deck)
end

def dealer_start!(deck)
  deal_cards!(deck) + deal_cards!(deck)
end

def display_player(player)
  prompt "Your cards are:"
  player.each { |x| puts "#{x[-1][0].to_s.capitalize} of #{x[0].to_s.capitalize}" }
  prompt "Your hand sum is #{player_sum(player)}"
end

def display_initial_dealer(dealer)
  card = dealer[0][-1][0].to_s.capitalize
  suit = dealer[0][0].to_s.capitalize
  value = dealer[0][-1][-1]
  value += 10 if card == 'Ace'
  prompt "The Dealer has #{card} of #{suit} (#{value})"
end

def display_dealer(dealer)
  prompt "Dealer cards are:"
  dealer.each { |x| puts "#{x[-1][0].to_s.capitalize} of #{x[0].to_s.capitalize}"}
  prompt "The dealer hand total is #{dealer_sum(dealer)}"
end

def player_sum(player)
  sum = 0
  player.each { |x| sum += x[-1][-1] }
  if sum <= 11 && player.flatten.flatten.include?(1)
    sum += 10
  else
    sum
  end
end

def dealer_sum(dealer)
  sum = 0
  dealer.each { |x| sum += x[-1][-1] }
  if sum <= 11 && dealer.flatten.flatten.include?(1)
    sum += 10
  else
    sum
  end
end

def winner(player, dealer, name)
  prompt "#{name}: #{player_sum(player)} / Dealer: #{dealer_sum(dealer)}"

  if player_sum(player) > GAME_MAX
    prompt "Dealer Won! Not this time, #{name}!"
  elsif dealer_sum(dealer) > GAME_MAX
    prompt "You Won, #{name}! Congratulations!"
  elsif player_sum(player) > dealer_sum(dealer)
    prompt "You Won, #{name}! Congratulations!"
  elsif player_sum(player) == dealer_sum(dealer)
    prompt "It's a tie, #{name}! Unfortunately, there's no winner!"
  else
    prompt "Sorry, you lost this one #{name}!"
  end
end

prompt "Hi there! What's your name?"
name = gets.chomp

loop do
  system 'clear'
  deck = DECK #refresh deck after the destructive methods
  player = player_start!(deck)
  dealer = dealer_start!(deck)

  prompt "Hi #{name}, let's start this amazing 21 game!"

  display_player(player)
  display_initial_dealer(dealer)

  loop do
    puts "Do you want to hit or stay? (Hit/Stay)"
    turn = gets.chomp.downcase[0]
    break if turn == 's'
    system 'clear'
    player += deal_cards!(deck)
    display_player(player)
    display_initial_dealer(dealer)

    break if player_sum(player) > GAME_MAX
  end

  display_dealer(dealer)

  loop do
    break if player_sum(player) > GAME_MAX
    break unless dealer_sum(dealer) <= DEALER_MIN
    prompt "It looks like the dealer needs to hit!"
    dealer += deal_cards!(deck)
    display_dealer(dealer)
  end

  winner(player, dealer, name)
  prompt "Do you want to play again? (Y,N)"
  again = gets.chomp.downcase
  break unless again.start_with?('y')
end
