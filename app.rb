require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Joséphine")
player2 = Player.new("José")

while player1.life_points > 0 && player2.life_points > 0
  # Donner l'état de chaque combattant
  puts "----------------------------------------------------------"
  puts "Voici l'état de chaque joueur :"
  puts " "
  puts player1.show_state()
  puts player2.show_state()

  # Attaque
  puts "----------------------------------------------------------"
  puts "Passons à la phase d'attaque !"
  puts " "
  player1.attacks(player2)
  if player2.life_points > 0
  player2.attacks(player1)
  end 

end


# binding.pry
# puts "program end"