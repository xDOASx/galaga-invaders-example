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
    if launcher.is_a? Ship
      missile.launch(-10)
    elsif launcher.is_a? Alien
      missile.launch(10)
    end
    add(missile)
  end

end
