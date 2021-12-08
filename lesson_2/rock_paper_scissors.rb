VALID_CHOICES = %w[rock paper scissors lizard spock]
DEFEATS = { rock: ['scissors', 'lizard'],
            paper: ['rock', 'spock'],
            scissors: ['paper', 'lizard'],
            spock: ['rock', 'scissors'],
            lizard: ['spock', 'paper'] }

# Determine if the first choice beats the second choice
# if the array in DEFEATS[first] includes the second choice, first wins
# DEFEATS is a hash table with symbols for keys, so convert first to symbol
def win?(first, second)
  DEFEATS[first.to_sym].include?(second)
end

def get_player_choice
  choice = Kernel.gets().chomp()
  if choice.start_with?('r')
    'rock'
  elsif choice.start_with?('p')
    'paper'
  elsif choice.start_with?('sc')
    'scissors'
  elsif choice.start_with?('sp')
    'spock'
  elsif choice.start_with?('l')
    'lizard'
  else
    choice
  end
end

def determine_winner(player, computer)
  if win?(player, computer)
    'player'
  elsif win?(computer, player)
    'computer'
  else
    'no winner'
  end
end

def display_results(winner)
  if winner == 'player'
    prompt("You won!")
  elsif winner == 'computer'
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def update_scores(winner, scores)
  scores[winner.to_sym] += 1 unless winner == 'no winner'
end

def reset_scores(scores)
  scores[:player] = 0
  scores[:computer] = 0
end

# Match is over if either score reaches 3
def match_over?(scores)
  scores.value?(3)
end

def display_grand_winner(scores)
  if scores[:player] == 3
    prompt("You are the grand winner with 3 points!")
  elsif scores[:computer] == 3
    prompt("The computer is the grand winner with 3 points!")
  else
    prompt("Something has gone wrong!")
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

scores = { player: 0, computer: 0 }

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = get_player_choice()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  round_winner = determine_winner(choice, computer_choice)

  update_scores(round_winner, scores)

  display_results(round_winner)

  prompt("Player: #{scores[:player]}; Computer: #{scores[:computer]}")

  if match_over?(scores)
    display_grand_winner(scores)
    reset_scores(scores)
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
