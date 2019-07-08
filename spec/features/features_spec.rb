require 'airport'


describe "#user stories" do

  subject(:airport) { Airport.new }
  let(:plane) { double :plane}

# As an air traffic controller
# So I can get passengers to a destination
# I want to instruct a plane to land at an airport

  it 'so planes land at airports, instruct a plane to land' do
    expect { airport.land(plane) }.not_to raise_error
  end
end
