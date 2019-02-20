class Missile

  DEFAULT_VELOCITY = -10
  attr_accessor :x, :y, :velocity

  def initialize(x, y)
    @x = x
    @y = y
    @velocity = DEFAULT_VELOCITY
  end

  def move
    self.y += velocity
  end

  def draw
    puts self
  end

  def to_s
    "#{falling? ? '☄️' : '🚀'} (#{x}, #{y})"
  end

  def falling?
    velocity > 0
  end

end
