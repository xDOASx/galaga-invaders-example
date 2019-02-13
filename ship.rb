# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).

class Ship

  WIDTH = 100
  HEIGHT = 200
  SHIP_MOVE_DISTANCE = 5
  MISSLE_MOVE_DISTANCE = 10

  def initialize(x, y)
    @x = x
    @y = y
    @missile_coordinates = []
    @missles = []
  end

  def move_left
    @x -= SHIP_MOVE_DISTANCE
  end

  def move_right
    @x += SHIP_MOVE_DISTANCE
  end

  def fire_missles
    @missile_coordinates << [@x, @y - HEIGHT / 2]

  end

  def move_missiles
    # I feel like there will only ever be one missle, but I am
    # struggling on fixing this. I am pretty sure I need to make a
    # missle class, instead of having the ship control the missle,
    # esicially because the missle is leaving the ship.
    @missile_coordinates.each do |missile|
      missile[1] -= MISSLE_MOVE_DISTANCE
    end
  end

  def draw
    # Ignore this
  end

  def draw_missiles
    @missile_coordinates.each do |missile|

    end
  end

end


=begin
Reflecting on Principle
-----------------------
1. What does the OOD promise to give us, as programmers?
  A way of creating and maintaining code that interacts with itself and can be easily read and understood.
2. What does Martin's SOLID acronym stand for? (Just expand the acronym.)
  Single responsibility
  Open-Close
  Liskov Substitution
  Interface Segregation
  Dependency Inversion
3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later).
  True
4. In Metz' TRUE acronym, what does the E stand for and what does it mean?
  Exemplary - It should and and serve as a guide or model
5. How does applying SRP naturally lead to good design?
  It prevents objects from becoming too entangled. It also leads to higher levels of cohesiveness.
=end
