class Airport

  def initialize
    @landed_planes = []
  end

  def land(plane)
    @landed_planes << plane
  end

  def take_off(plane)
    @landed_planes.delete(plane)
  end

  def confirm_take_off?(plane)
    !@landed_planes.include?(plane)
  end

  def landed_planes
    @landed_planes
  end
end
