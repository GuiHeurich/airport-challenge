require 'airport'

describe Airport do

  subject(:airport) { described_class.new }
  let(:plane) { double :plane }
  let(:weather) { double :weather }

  describe '#land' do
    it 'increases the count of landed planes by 1' do
      airport.land(plane)
      expect(airport.landed_planes.count).to eq 1
    end
  end

  describe '#take_off' do
    it 'removes the plane from the landed planes' do
      allow(airport).to receive(:stormy?).and_return false
      airport.land(plane)
      airport.take_off(plane)
      expect(airport.landed_planes).not_to include(plane)
    end
  end

  describe '#comfirm_take_off?' do
    it 'checks whether a plane is in the hangar' do
      allow(airport).to receive(:stormy?).and_return false
      airport.land(plane)
      airport.take_off(plane)
      expect(airport.confirm_take_off?(plane)).to be true
    end
  end

  describe "#stormy?" do
    it 'returns true if the weather is stormy' do
      airport_two = Airport.new(weather)
      allow(weather).to receive(:stormy?).and_return true
      expect(airport_two.stormy?).to be true
    end
  end

end
