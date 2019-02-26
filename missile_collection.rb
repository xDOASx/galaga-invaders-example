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

  def add_from(vessels)
    vessels.each { |vessel|
      vessel.prepare_missile(missile)
      add(missile)}
  end

end
