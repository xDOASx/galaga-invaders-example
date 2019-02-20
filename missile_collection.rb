require_relative 'missile'
require_relative 'ship'

class MissileCollection

  attr_reader :missiles

  def initialize
    @missiles = []
  end

  def add_ship_missile
    missiles << ship_missile
  end

  def add_alien_missile
    missiles << alien_missile
  end

  def update
    missiles.each(&:move)
  end

  def draw
    missiles.each(&:draw)
  end

  def ship_missile
    @ship_missile ||= Missile.new(ship_launch_location)
  end

  def alien_missile
    @alien_missile ||= Missile.new()
  end

  def ship_launch_location
    ship.muzzle_location
  end

  def alien_launch_location
    alien.muzzle_location
  end

end
