class Ship < Structure
  attr_accessor :sprite

  def post_initialize(args)
    sprite = args.fetch[:sprite]
  end

end
