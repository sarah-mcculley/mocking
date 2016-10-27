require 'wardrobe_chooser'

describe 'wardrobe chooser' do

  it 'knows to pick snow boots when it is snowing' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockWeatherService.new
    expect(wardrobe_chooser.wardrobe_for_today).to eq 'wear snow boots'
  end

  it 'knows to pick an umbrella when it is raining' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockWeatherService.new
    expect(wardrobe_chooser.wardrobe_for_today).to eq 'carry an umbrella'
  end

  it 'knows to pick sandals when it is sunny' do
    wardrobe_chooser = WardrobeChooser.new
    wardrobe_chooser.weather_service = MockWeatherService.new
    expect(wardrobe_chooser.wardrobe_for_today).to eq 'wear sandals'
  end


end

class MockWeatherService
  def which?
    'none'
  end
end