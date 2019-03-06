class Structure
  include Drawing
  include Destroyable
  include Damagable
  include Hitable

  attr_accessor :hit_points, :location

  def initialize(args)
    location = args.fetch[:location]
    hit_points = args.fetch[:hit_points]
    post_initialize(args);
  end

  def post_initialize(args)
    nil
  end

end
