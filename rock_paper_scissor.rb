# Rock, Paper, Scissors game

CHOICES = {'p' => 'paper', 'r' => 'rock', 's' => 'scissor'}

def player_wins?(player, computer)
  return true if (player == 'p' and computer == 'r')  || (player == 'r' and computer == 's') || (player == 's' and computer == 'p')
end

loop do

  begin
    puts "Enter 'r', 'p', or 's'"
    player_choice = gets.chomp
  end until CHOICES.keys.include?(player_choice)

  computer_choice = CHOICES.keys.sample

  if player_choice == computer_choice
    puts "It's a tie!"
  elsif player_wins?(player_choice, computer_choice)
    puts "Player wins! (#{CHOICES[player_choice]} beats #{CHOICES[computer_choice]}) ."
  else
    puts "Computer wins! (#{CHOICES[computer_choice]} beats #{CHOICES[player_choice]})."
  end

  puts "Play again? Type 'y' to play again"
  keep_playing = gets.chomp

  if keep_playing.downcase != 'y'
    break
  end

end