class WeatherService


  def rain?
    rain = [true, false].sample
  end

  def snow?
    snow = [true, false].sample
  end

  def current_temp
    temp = rand(-20..115)
  end

end
