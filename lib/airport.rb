require_relative 'weather'

class Airport

  CAPACITY = 20

  def initialize(weather = Weather.new)
    @weather = weather
    @landed_planes = []
  end

  def land(plane)
    raise "Weather is stormy!" if stormy?
    raise "Airport full!" if full?
    @landed_planes << plane
  end

  def take_off(plane)
    raise "Weather is stormy!" if stormy?
    @landed_planes.delete(plane)
  end

  def confirm_take_off?(plane)
    !@landed_planes.include?(plane)
  end

  def full?
    @landed_planes.count >= CAPACITY
  end

  def stormy?
    @weather.stormy?
  end

  def landed_planes
    @landed_planes
  end
end
