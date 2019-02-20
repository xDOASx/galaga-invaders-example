require_relative 'alien'
require_relative 'ship'
require_relative 'missile_collection'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :alien, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new(WIDTH, HEIGHT)
    @alien = Alien.new
    @missiles = MissileCollection.new
  end

  def update
    missiles.update
  end

  def draw
    ship.draw
    alien.draw
    missiles.draw
  end

  def show
    while (true) do
      update
      draw
      key_pressed(gets.chomp) # Simulating a key interrupt.
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    elsif key == 'd'
      ship.move_right
    elsif key == ' '
      missile_collection.add_ship_missile
    end
    if key == 'p'
      missile_collection.add_alien_missile
    end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. True or False: Good OO design eliminates dependencies.
  False. By definitions, objects need to interact with eachother and know eachother.
  Knowing creates dependencies. Good OO design manages and limits these dependecies.
2. Briefly list four ways in which a class that collaborates with another class
   is dependent on it. (For example, one dependency is knowing the other class name.)
  Knowing the name of another class
  Knowing the name of a message that it intends to send to someone other than "self"
  Knowing the arguements that a message requires
  Knowing the order of those arguements
3. What are two primary factors to consider when assessing the risk of a dependency?
  Law of Demeter
  Coupling Between Objects
4. What is Metz's rule of thumb for choosing a dependency direction?
  Depend on things that change less often than you do.
=end
