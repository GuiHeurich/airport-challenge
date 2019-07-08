require 'airport'

describe Airport do

  subject(:airport) { described_class.new }
  let(:plane) { double :plane}

  describe '#land' do
    it 'increases the count of landed planes by 1' do
      airport.land(plane)
      expect(airport.landed_planes.count).to eq 1
    end
  end
end
