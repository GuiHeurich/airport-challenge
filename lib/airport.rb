class Airport

  def initialize
    @landed_planes = []
  end

  def land(plane)
    @landed_planes << plane
  end

  def landed_planes
    @landed_planes
  end
end
