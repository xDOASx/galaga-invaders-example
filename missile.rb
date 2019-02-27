require_relative 'vector'

class Missile

  attr_accessor :location, :velocity

  def initialize(launcher)
    @location = launcher.muzzle_location
    @velocity = launcher.munition_velocity
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
