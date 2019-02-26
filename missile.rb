require_relative 'vector'

class Missile

  LAUNCH_VELOCITY = 10

  attr_accessor :location, :velocity

  def initialize(location)
    @location = location
  end

  def launch(velocity_direction)
    @velocity = velocity_direction * LAUNCH_VELOCITY
  end

  def move
    location.y += velocity
  end

  def draw
    puts self
  end

  def to_s
    "#{falling? ? '☄️' : '🚀'} (#{location})"
  end

  def falling?
    velocity > 0
  end

end
