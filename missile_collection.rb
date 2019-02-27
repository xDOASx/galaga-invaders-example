class MissileCollection

  attr_reader :missiles

  def initialize
    @missiles = []
  end

  def add(missile)
    missiles << missile
  end

  def update
    missiles.each(&:move)
  end

  def draw
    missiles.each(&:draw)
  end

  def add_from(launcher)
    missile = Missile.new(launcher.muzzle_location)
    missile.launch(launcher.munition_velocity)
    add(missile)
  end

end
