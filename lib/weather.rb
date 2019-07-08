class Weather

  def stormy?
    random_weather > 4
  end

  private
  def random_weather
    rand(10)
  end

end
