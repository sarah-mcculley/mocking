require 'weather_service'

class WardrobeChooser

  WEATHER = {
      'rain' => 'carry an umbrella',
      'snow' => 'wear snow boots',
      'sun' => 'wear sandals',

  }

  attr_accessor :weather_service

  def initialize
    @weather_service = WeatherService.new
  end


  def shoes_for_today
    WEATHER[@weather_service.which?]

  end


end