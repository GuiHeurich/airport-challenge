require 'airport'


describe Airport do

  subject(:airport) { described_class.new }
  let(:plane) { double :plane}

# As an air traffic controller
# So I can get passengers to a destination
# I want to instruct a plane to land at an airport

  describe '#land' do
    it 'instructs a plane to land' do
      airport.land(plane)
      expect(airport.landed_planes.count).to eq 1
    end
  end
end
