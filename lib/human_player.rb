class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize()
    super(name)
    puts "Donne un nom à ton personnage :"
    print "> "
    @name = gets.chomp     
    @life_points = 30
    @weapon_level = 1
  end

  def show_state()
    super()
    print "et une arme de puissance #{@weapon_level}."
  end

  def compute_damage()
    rand(1..6) * @weapon_level
  end

  def search_weapon()
    new_weapon_level = rand(1..6)
    puts "Tu as trouvé une arme de puissance #{new_weapon_level}"
    if new_weapon_level > @weapon_level
      @weapon_level = new_weapon_level
      puts"Tu changes donc d'arme :) "
    else
      puts "Mince, elle est moins bien que l'actuelle !"
      puts "Gardons celle-ci et continuons le combat."
    end

  end

  def search_health_pack()
    random_value = rand(1..6)

    if random_value == 1
      puts "Oups, tes recherches n'ont rien donné..."
    elsif (2..5).include?(random_value)
      puts "Bravo, tu as trouvé un pack de 50 points de vie!"
      if @life_points < 50
        @life_points += 50
        puts "=> Tes points de vie retournent à #{@life_points}"
      else
        @life_points = 100
        puts "=> Tu retrouves tous tes points de vie :D"
      end
    elsif random_value == 6
      puts "Waow, tu as trouvé un pack de 80 points de vie!"
      if @life_points < 20
        @life_points += 80
      else
        @life_points = 100
      end
    end
  end




end