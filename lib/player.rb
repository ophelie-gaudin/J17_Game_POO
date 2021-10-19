class Player
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10

  end

  def show_state()
    puts "=> Le joueur #{@name} a #{@life_points} points de vie"
  end

  def gets_damage(damage_points)
    @life_points -= damage_points

    if @life_points <= 0
      puts "=> Le joueur #{@name} a été tué! "
      return "Fin de la partie"
    else
      puts "=>#{@name} a #{@life_points} points de vie restants."
    end
  end

  def attacks(victim_player)
    puts "Le joueur #{@name} attaque le joueur #{victim_player.name}"
    damage_points = compute_damage
    puts "et lui inflige #{damage_points} points de vie"
    victim_player.gets_damage(damage_points)
  end

  def compute_damage
    return rand(1..6)
  end





end 