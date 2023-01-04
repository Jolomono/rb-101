WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  puts "You're an #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def place_piece!(brd, current_player)
  case current_player
  when "Player"
    player_places_piece!(brd)
  when "Computer"
    computer_places_piece!(brd)
  end
end

def alternate_player(current_player)
  current_player == "Player" ? "Computer" : "Player"
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  if detect_best_space(brd)
    square = detect_best_space(brd)
  else
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

# returns nil if there isn't an optimal space to win or block
def detect_best_space(brd)
  best_space = nil
  best_line = nil

  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(INITIAL_MARKER) == 0
      next
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 2
      best_line = line
    elsif brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 2
      best_line = line
    end
  end

  if best_line
    best_line.each do |space|
      best_space = space if empty_squares(brd).include?(space)
    end
  else
    best_space = 5 if empty_squares(brd).include?(5)
  end
  best_space
end

def joinor(array, delimiter = ', ', conjunction = 'or')
  return "" if array.length == 0
  return array[0] if array.length == 1
  start_str = array.slice(0..-2).join(delimiter)
  end_str = " #{array[-1]}"
  start_str + delimiter + conjunction + end_str
end

def update_score(winner, score_hash)
  score_hash[winner] += 1
end

def reset_score(score_hash)
  score_hash.each do |key, _|
    score_hash[key] = 0
  end
end

def get_starting_player()
  answer = ''
  loop do
    prompt ("Who goes first? ('P' for Player or 'C' for Computer)")
    answer = gets.chomp.downcase
    break if answer == "p" || answer == "c"
    prompt "Invalid choice. Please select 'P' or 'C'"
  end
  answer == 'p' ? "Player" : "Computer"
end

scores = {"Player" => 0, "Computer" => 0}

loop do
  board = initialize_board
  current_player = get_starting_player()

  loop do
    display_board(board)

    place_piece!(board, current_player)
    break if someone_won?(board) || board_full?(board)

    current_player = alternate_player(current_player)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    update_score(detect_winner(board), scores)
  else
    prompt "It's a tie!"
  end

  prompt "- SCORES -"
  prompt "Player: #{scores["Player"]} Computer: #{scores["Computer"]}"

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
