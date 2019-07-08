require 'airport'

describe Airport do

  subject(:airport) { described_class.new }
  let(:plane) { double :plane }

  describe '#land' do
    it 'increases the count of landed planes by 1' do
      airport.land(plane)
      expect(airport.landed_planes.count).to eq 1
    end
  end

  describe '#take_off' do
    it 'removes the plane from the landed planes' do
      airport.land(plane)
      airport.take_off(plane)
      expect(airport.landed_planes).not_to include(plane)
    end
  end

  describe '#comfirm_take_off?' do
    it 'checks whether a plane is in the hangar' do
      airport.land(plane)
      airport.take_off(plane)
      expect(airport.confirm_take_off?(plane)).to be true
    end
  end
end
