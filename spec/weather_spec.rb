require 'weather'

describe Weather do

  subject(:weather) { described_class.new }

  describe '#stormy?' do
    it 'returns true if random weather is more than 4' do
      allow(weather).to receive(:random_weather).and_return 5
      expect(weather.stormy?).to be true
    end
  end
end
