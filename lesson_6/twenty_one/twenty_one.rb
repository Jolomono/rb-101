require "pry"

# Initialize the deck
# Deal cards to player and dealer
# Player turn: hit or stay
# - repeat until bust or "stay"
# If player busts, dealer wins
# Dealer turn: hit or stay
# - repeat until total >= 17
# If dealer busts, player wins
# Compare cards and declare winner

WINNING_SCORE = 21
DEALER_STAY = 17

def prompt(msg)
  puts "=> #{msg}"
end

def play_again?
  prompt("Would you like to play again? (y/n)")
  answer = gets.chomp
  answer.downcase.start_with?('y') ? true : false
end

def initialize_deck
  deck = []
  4.times do
    deck += %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)
  end
  deck
end

def deal_hand(deck)
  deck.shift(2)
end

def get_card_value(card)
  if card.to_i.to_s == card
    card.to_i
  elsif ["Jack", "Queen", "King"].include?(card)
    10
  else
    1
  end
end

def get_hand_value(hand)
  value = 0
  hand.each do |card|
    value += get_card_value(card)
  end

  if hand.include?("Ace")
    value += 10 if value + 10 <= WINNING_SCORE
  end

  value
end

def bust?(value)
  value > WINNING_SCORE
end

def display_full_hand(hand, player = true)
  delimiter = ", "
  prefix = player ? "You have:" : "Dealer has:"
  value = get_hand_value(hand)
  if hand.length == 2
    puts "#{prefix} #{hand[0]} and #{hand[1]}. Worth #{value}"
  else
    start_str = hand.slice(0..-2).join(delimiter)
    end_str = " #{hand[-1]}"
    puts "#{prefix} #{start_str}#{delimiter}and#{end_str}. Worth #{value}"
  end
end

def display_dealer_hand(hand)
  if hand.length == 2
    puts "Dealer has: #{hand[0]} and 1 unknown card"
  else
    num_unk_cards = hand.length - 1
    puts "Dealer has: #{hand[0]} and #{num_unk_cards} unknown cards"
  end
end

def display_scores(score_hash)
  puts ""
  score_hash.each do |player, score|
    puts "#{player.capitalize} has #{score} wins"
  end
end

def display_winning_message(winner)
  puts ""
  case winner
  when "player" then puts "You win!"
  when "dealer" then puts "Dealer wins!"
  when "neither" then puts "Draw. No winner this time."
  end
end

def hit_or_stay
  answer = ''
  loop do
    prompt("Hit or stay? (h or s)")
    answer = gets.chomp.downcase
    if answer.start_with?('h')
      answer = 'hit'
      break
    elsif answer.start_with?('s')
      answer = 'stay'
      break
    end
    prompt("Invalid choice, please type 'h' for hit or 's' for stay.")
  end
  answer
end

def player_turn(hand, deck)
  puts ""
  puts "## Player Turn ##"
  display_full_hand(hand)
  busted = false
  loop do
    player_choice = hit_or_stay
    if player_choice == 'hit'
      new_card = deck.shift
      hand << new_card
      puts "You hit and receive #{new_card}."
    end
    busted = bust?(get_hand_value(hand))
    break if player_choice == 'stay' || busted
    display_full_hand(hand)
  end

  if busted
    display_full_hand(hand)
    puts "You have busted."
  else
    puts "You chose to stay."
  end
end

def dealer_turn(hand, deck)
  puts ""
  puts "## Dealer Turn ##"
  display_full_hand(hand, false)
  busted = false
  loop do
    value = get_hand_value(hand)
    busted = bust?(value)
    break if busted
    if value < DEALER_STAY
      puts "Dealer will hit."
      puts ""
      sleep(2)
      new_card = deck.shift
      hand << new_card
      puts "Dealer hits and receives #{new_card}"
      puts ""
      display_full_hand(hand, false)
    else
      puts "Dealer will stay."
      puts ""
      sleep(2)
      break
    end
  end
  puts "Dealer has busted." if busted
end

def determine_winner(player, dealer)
  if player > dealer
    "player"
  elsif dealer > player
    "dealer"
  else
    "neither"
  end
end

def update_score(score_hash, winner)
  score_hash[winner] += 1 unless winner == 'neither'
end


scores = {"player" => 0, "dealer" => 0}

loop do
  game_over = false
  winner = ""
  deck = initialize_deck.shuffle

  player_hand = deal_hand(deck)
  dealer_hand = deal_hand(deck)

  display_dealer_hand(dealer_hand)

  player_turn(player_hand, deck)
  player_value = get_hand_value(player_hand)
  if bust?(player_value)
    winner = "dealer"
    game_over = true
  end

  dealer_turn(dealer_hand, deck) unless game_over
  dealer_value = get_hand_value(dealer_hand)
  if bust?(dealer_value)
    winner = "player"
    game_over = true
  end

  if !game_over
    display_full_hand(dealer_hand, false)
    display_full_hand(player_hand)
    winner = determine_winner(player_value, dealer_value)
  end

  display_winning_message(winner)
  update_score(scores, winner)
  display_scores(scores)

  if scores.key(5)
    puts "#{scores.key(5).capitalize} is the winner with 5 wins!"
    sleep(1)
    scores.each { |player, score| scores[player] = 0}
  end


  puts ""
  if !play_again?
    puts "Thanks for playing!"
    break
  end
  puts "Restarting game..."
  sleep(1)
  system 'clear'
end
