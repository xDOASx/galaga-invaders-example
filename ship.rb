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

end
