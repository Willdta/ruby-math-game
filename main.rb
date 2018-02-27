require_relative './players.rb'
require_relative './questions.rb'

player_one = Player.new('Player 1')
player_two = Player.new('Player 2')

puts "Ready #{player_one.name} and #{player_two.name}?"
puts "------------------------------------------------"

def player_turn(current_player)
  question = Questions.new()
  
  puts "#{current_player.name}: #{question.question}"
  answer = gets.chomp.to_i

  if answer == question.answer
    puts "Correct Brah"
    puts "------------"
  else
    current_player.lost_life
    puts "Wrong Brah"
    puts "----------"
  end
end

loop do
  player_turn(player_one)
  break puts "Player 2 wins with a score of #{player_two.life}/3" if (player_one.game_over?)
  player_turn(player_two)
  break puts "Player 1 wins with a score of #{player_one.life}/3" if (player_two.game_over?)

  puts "#{player_one.name}: #{player_one.life}/3 vs #{player_two.name}: #{player_two.life}/3"
  puts "-------------------"  
  puts "Next Turn"
  puts "---------"
end

puts "Game Ova"