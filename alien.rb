require_relative 'missile'

class Alien

  WIDTH = 50
  HEIGHT = 50
  MUNITION_VELOCITY = 10

  attr_accessor :location

  def initialize
    @location = Vector.new(200, 200)
  end

  def muzzle_location
    Vector.new(location.x, bottom_edge)
  end

  def munition_velocity
    MUNITION_VELOCITY
  end

  def fire(missile)
    missile.location = muzzle_location
    missile.velocity = munition_velocity
  end

  def move
  end

  def draw
    puts self
  end

  def to_s
    "👾 (#{location})"
  end

  def bottom_edge
    location.y + half_height
  end

  private

  def half_height
    HEIGHT / 2
  end

end
