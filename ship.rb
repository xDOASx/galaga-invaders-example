# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).

class Ship

  WIDTH = 100
  HEIGHT = 200
  VELOCITY = 10

  def initialize(x, y)
    @x = 0
    @y = 0
  end

  def move_left
    @x -= VELOCITY
  end

  def move_right
    @x += VELOCITY
  end

  def fire
    @x, @y - HEIGHT / 2
  end

end
