def valid_selection(choice)
  ['rock', 'paper', 'scissors'].include?(choice)
end

def determine_result(player, computer)
  winning_moves = {
    'rock' => 'scissors',
    'paper' => 'rock',
    'scissors' => 'paper'
  }
  if player == computer
    'tie'
  elsif winning_moves[player] == computer
    'player'
  else
    'computer'
  end
end

def display_result(player, computer)
  # if (player == "rock" && computer == "scissors") ||
  #     (player == "paper" && computer == "rock") ||
  #     (player == "scissors" && computer == "paper")
  #     prompt("Congratulations, YOU WON!!!!")
  # elsif (player == "rock" && computer == "paper") ||
  #       (player == "paper" && computer == "scissors") ||
  #       (player == "scissors" && computer == "rock")
  #     prompt("Tough luck :(, the Computer Won")
  # else
  #     prompt("Its a tie!!")
  # end
  result = determine_result(player, computer)
  if result == 'player'
    prompt("Congratulations, YOU WON!!!!")
  elsif result == 'computer'
    prompt("Tough luck :(, the Computer Won")
  else
    prompt("Its a tie!!")
  end
end

def prompt(message)
  puts("=> #{message}")
end

loop do
  loop do
    prompt("Choose one: rock, paper, scissors")
    choice = Kernel.gets().chomp.downcase
    computer_choice = ["rock", "paper", "scissors"].sample()

    if valid_selection(choice)
        prompt("You choose: #{choice}, computer choose: #{computer_choice} ")
        display_result(choice, computer_choice)
        break
    else
      prompt("Not a valid selection")
    end
  end

  prompt("Would you like to keep playing?('y for yes' - 'n for no')")
  keep_playing = gets.chomp
    if !keep_playing.downcase.start_with?('y')
        prompt("Thank you for playing. Goodbye!")
        break
    end
end
