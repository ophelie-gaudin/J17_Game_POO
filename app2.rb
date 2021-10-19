require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/human_player'

#ACCUEIL

def start_game()
  puts " ▒█████    ██████  ██ ▄█▀ █    ██  █    ██  █    ██  ██▀███            ";
  puts "▒██▒  ██▒▒██    ▒  ██▄█▒  ██  ▓██▒ ██  ▓██▒ ██  ▓██▒▓██ ▒ ██▒          ";
  puts "▒██░  ██▒░ ▓██▄   ▓███▄░ ▓██  ▒██░▓██  ▒██░▓██  ▒██░▓██ ░▄█ ▒          ";
  puts "▒██   ██░  ▒   ██▒▓██ █▄ ▓▓█  ░██░▓▓█  ░██░▓▓█  ░██░▒██▀▀█▄            ";
  puts "░ ████▓▒░▒██████▒▒▒██▒ █▄▒▒█████▓ ▒▒█████▓ ▒▒█████▓ ░██▓ ▒██▒          ";
  puts "░ ▒░▒░▒░ ▒ ▒▓▒ ▒ ░▒ ▒▒ ▓▒░▒▓▒ ▒ ▒ ░▒▓▒ ▒ ▒ ░▒▓▒ ▒ ▒ ░ ▒▓ ░▒▓░          ";
  puts "  ░ ▒ ▒░ ░ ░▒  ░ ░░ ░▒ ▒░░░▒░ ░ ░ ░░▒░ ░ ░ ░░▒░ ░ ░   ░▒ ░ ▒░          ";
  puts "░ ░ ░ ▒  ░  ░  ░  ░ ░░ ░  ░░░ ░ ░  ░░░ ░ ░  ░░░ ░ ░   ░░   ░           ";
  puts "    ░ ░        ░  ░  ░      ░        ░        ░        ░               ";
  puts " ██▓ ██▓      ██████                                                   ";
  puts "▓██▒▓██▒    ▒██    ▒                                                   ";
  puts "▒██▒▒██░    ░ ▓██▄                                                     ";
  puts "░██░▒██░      ▒   ██▒                                                  ";
  puts "░██░░██████▒▒██████▒▒                                                  ";
  puts "░▓  ░ ▒░▓  ░▒ ▒▓▒ ▒ ░                                                  ";
  puts " ▒ ░░ ░ ▒  ░░ ░▒  ░ ░                                                  ";
  puts " ▒ ░  ░ ░   ░  ░  ░                                                    ";
  puts " ░      ░  ░      ░                                                    ";
  puts " ██▒   █▓▓█████  █    ██  ██▓    ▓█████  ███▄    █ ▄▄▄█████▓           ";
  puts "▓██░   █▒▓█   ▀  ██  ▓██▒▓██▒    ▓█   ▀  ██ ▀█   █ ▓  ██▒ ▓▒           ";
  puts " ▓██  █▒░▒███   ▓██  ▒██░▒██░    ▒███   ▓██  ▀█ ██▒▒ ▓██░ ▒░           ";
  puts "  ▒██ █░░▒▓█  ▄ ▓▓█  ░██░▒██░    ▒▓█  ▄ ▓██▒  ▐▌██▒░ ▓██▓ ░            ";
  puts "   ▒▀█░  ░▒████▒▒▒█████▓ ░██████▒░▒████▒▒██░   ▓██░  ▒██▒ ░            ";
  puts "   ░ ▐░  ░░ ▒░ ░░▒▓▒ ▒ ▒ ░ ▒░▓  ░░░ ▒░ ░░ ▒░   ▒ ▒   ▒ ░░              ";
  puts "   ░ ░░   ░ ░  ░░░▒░ ░ ░ ░ ░ ▒  ░ ░ ░  ░░ ░░   ░ ▒░    ░               ";
  puts "     ░░     ░    ░░░ ░ ░   ░ ░      ░      ░   ░ ░   ░                 ";
  puts "      ░     ░  ░   ░         ░  ░   ░  ░         ░                     ";
  puts "     ░                                                                 ";
  puts "▄▄▄█████▓ ▒█████   █    ██   ██████              ███▄ ▄███▓ ▄▄▄        ";
  puts "▓  ██▒ ▓▒▒██▒  ██▒ ██  ▓██▒▒██    ▒             ▓██▒▀█▀ ██▒▒████▄      ";
  puts "▒ ▓██░ ▒░▒██░  ██▒▓██  ▒██░░ ▓██▄               ▓██    ▓██░▒██  ▀█▄    ";
  puts "░ ▓██▓ ░ ▒██   ██░▓▓█  ░██░  ▒   ██▒            ▒██    ▒██ ░██▄▄▄▄██   ";
  puts "  ▒██▒ ░ ░ ████▓▒░▒▒█████▓ ▒██████▒▒            ▒██▒   ░██▒ ▓█   ▓██▒  ";
  puts "  ▒ ░░   ░ ▒░▒░▒░ ░▒▓▒ ▒ ▒ ▒ ▒▓▒ ▒ ░            ░ ▒░   ░  ░ ▒▒   ▓▒█░  ";
  puts "    ░      ░ ▒ ▒░ ░░▒░ ░ ░ ░ ░▒  ░ ░            ░  ░      ░  ▒   ▒▒ ░  ";
  puts "  ░      ░ ░ ░ ▒   ░░░ ░ ░ ░  ░  ░              ░      ░     ░   ▒     ";
  puts "             ░ ░     ░           ░                     ░         ░  ░  ";
  puts " ██▓███   ▒█████   ▒█████   ▒█████   ▒█████      ▐██▌  ▐██▌  ▐██▌      ";
  puts "▓██░  ██▒▒██▒  ██▒▒██▒  ██▒▒██▒  ██▒▒██▒  ██▒    ▐██▌  ▐██▌  ▐██▌      ";
  puts "▓██░ ██▓▒▒██░  ██▒▒██░  ██▒▒██░  ██▒▒██░  ██▒    ▐██▌  ▐██▌  ▐██▌      ";
  puts "▒██▄█▓▒ ▒▒██   ██░▒██   ██░▒██   ██░▒██   ██░    ▓██▒  ▓██▒  ▓██▒      ";
  puts "▒██▒ ░  ░░ ████▓▒░░ ████▓▒░░ ████▓▒░░ ████▓▒░    ▒▄▄   ▒▄▄   ▒▄▄       ";
  puts "▒▓▒░ ░  ░░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒░▒░▒░     ░▀▀▒  ░▀▀▒  ░▀▀▒      ";
  puts "░▒ ░       ░ ▒ ▒░   ░ ▒ ▒░   ░ ▒ ▒░   ░ ▒ ▒░     ░  ░  ░  ░  ░  ░      ";
  puts "░░       ░ ░ ░ ▒  ░ ░ ░ ▒  ░ ░ ░ ▒  ░ ░ ░ ▒         ░     ░     ░      ";
  puts "             ░ ░      ░ ░      ░ ░      ░ ░      ░     ░     ░         ";
  puts "                                                                       ";


  puts "Bienvenue dans 'OSKUUUUUUR, ils veulent tous ma pôôôô' !!!".rjust(40)
  puts "La nuit d'Halloween approche et de nombreux monstres rodent dans ton terminal..."
  puts "Malheureusement, la cohabitation est impossible et il n'en restera qu'un !"
  puts "Qui donc survivra à ce terrible affontement ?"
end

# Création des différents personnages
def create_perso()
  puts "----------------------------------------------------------"
  puts "CREATION DE TON PERSONNAGE"
  puts "----------------------------------------------------------"
  human_player = HumanPlayer.new
  return human_player
end

def create_ennemies()
  ennemies_array = []

  player1 = Player.new("Bôoo, le fantome cachottier")
  ennemies_array.push player1
  player2 = Player.new("Draculla, la sangsüe sanguinaire")
  ennemies_array.push player2
  puts " "
  return ennemies_array
end



# Donner l'état de chaque combattant
def show_players_state(human_player, ennemies_array)
  puts "----------------------------------------------------------"
  puts "VOICI L'ETAT DE CHAQUE JOUEUR :"
  puts "----------------------------------------------------------"
  puts human_player.show_state()

  ennemies_array.each do |ennemis|
    print ennemis.show_state()
  end

  puts " "

end



#Recherche d'arme puissante pour HumanPlayer OU pack de vie

def choose_care_action(human_player)
  puts "----------------------------------------------------------"
  puts "ACTION ENTRE COMBATS :"
  puts "----------------------------------------------------------"
  puts "Quelle action veux-tu effectuer?\n 1 - chercher une meilleure arme.\n 2 - essayer de se soigner."
  print "> "
  response = gets.chomp.to_i
  is_include = false
  range = (1..2).to_a

  if range.include?(response)
    is_include = true
  end


  while is_include == false
    puts "Nous n'avons pas compris ta réponse, recommence :"
    response = gets.chomp.to_i
  end

  if response == 1
    human_player.search_weapon()
  else response == 2
    human_player.search_health_pack()
  end

  puts " "
end



# Attaque
 
def show_user_attack(ennemies_array, human_player)
  puts "Qui veux-tu attaquer ?"

  index = 1
  ennemies_array.each do |ennemy|
    puts "#{index} - #{ennemy.name} qui a #{ennemy.life_points} points de vie."
    index += 1
  end
  
  print "> "
  response = gets.chomp.to_i
  range = (1..ennemies_array.length()).to_a

  if range.include?(response)
    is_include = true
  else
    is_include = false
  end

  while is_include == false
    puts "Nous n'avons pas compris ta réponse, recommence :"
    response = gets.chomp.to_i
  end

  human_player.attacks(ennemies_array[response - 1])

    if ennemies_array[response - 1].life_points <= 0
      ennemies_array.delete( ennemies_array[response - 1]) 
    end
  
  puts " "

end




def show_monsters_attacks(ennemies_array, human_player)

  puts "----------------------------------------------------------"
  puts "FAIS ATTENTION A TOI !"
  puts "----------------------------------------------------------" 
  puts "C'est maintenant le tour de tes ennemis, prends garde !" 

  ennemies_array.each do |ennemy_player|
    if ennemy_player.life_points > 0 
      ennemy_player.attacks(human_player)
      end
    sleep 2
    puts " "
  end
end



#Global part battle

def show_attacks(array, fighter)
  puts "----------------------------------------------------------"
  puts "A L'ATTAQUE !"
  puts "----------------------------------------------------------"  
  
  show_user_attack(array, fighter)

  sleep 3

  if !array.empty?  
    show_monsters_attacks(array, fighter)
  end

  sleep 3

end




# Fin de partie
def game_end(human_player)
  if human_player.life_points > 0
    puts "Bravo, tu as gagné contre ces monstres!"
    puts "mais reste sur tes gardes jusqu'à Halloween,"
    puts "on ne sait jamais... :)"
  else
    puts "Ils t'entrainent au bout de la nuit... Les démons de la nuit ;("
  end
end




# Rejouer ?
def try_again()
  puts "Veux-tu de nouveau te battre ?"
  puts "Y : yes"
  puts "n : no"
  response = gets.chomp

  while (!["Y", "n"].include?(response))
    puts "Nous n'avons pas compris ta réponse..."
    response = gets.chomp
  end


  if response == "Y"
    # perform()
    return true
  else
    puts "Tu as vu l'horreur et nous comprenions que tu souhaites prendre ta retraite moussaillon ;)"
    return false
  end

end


def game()
  start_game()

  human_player = create_perso()

  ennemies_array = create_ennemies()

  while (ennemies_array.any? { |ennemy| ennemy.life_points >= 0 } ) && human_player.life_points > 0

    show_players_state(human_player, ennemies_array)

    sleep 2

    choose_care_action(human_player)

    sleep 3

    show_attacks(ennemies_array, human_player)

    sleep 3

  end

  game_end(human_player)

  sleep 3
end


def perform()

  game()

  while ( try_again() )
    game()
  end
  # cette boucle permet d'écraser les parties précédentes sans retenir les données des parties précédentes (permet de ne pas utiliser trop de rames)

end


perform()