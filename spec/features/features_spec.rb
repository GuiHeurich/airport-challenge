require 'airport'
require 'plane'

describe "#user stories" do

  let(:airport) { Airport.new }
  let(:plane) { Plane.new }
  let(:weather) { Weather.new }

# As an air traffic controller
# So I can get passengers to a destination
# I want to instruct a plane to land at an airport

  it 'so planes land at airports, instruct a plane to land' do
    allow(airport).to receive(:stormy?).and_return false
    expect { airport.land(plane) }.not_to raise_error
  end

  # As an air traffic controller
  # So I can get passengers on the way to their destination
  # I want to instruct a plane to take off from an airport and
  # confirm that it is no longer in the airport

  it 'so planes take off from airports, instruct a plane to take off and confirm' do
    allow(airport).to receive(:stormy?).and_return false
    expect { airport.take_off(plane) }.not_to raise_error
    expect { airport.confirm_take_off?(plane) }.not_to raise_error
  end

  # As an air traffic controller
  # To ensure safety
  # I want to prevent takeoff when weather is stormy

  it 'prevents take off when weather is stormy' do
    allow(airport).to receive(:stormy?).and_return true
    expect { airport.take_off(plane) }.to raise_error("Weather is stormy!")
  end

  # As an air traffic controller
  # To ensure safety
  # I want to prevent landing when weather is stormy
  it 'prevents landing when weather is stormy' do
    allow(airport).to receive(:stormy?).and_return true
    expect { airport.land(plane) }.to raise_error("Weather is stormy!")
  end

  # As an air traffic controller
  # To ensure safety
  # I want to prevent landing when the airport is full
  it 'prevents landing when airport is in full capacity' do
    allow(airport).to receive(:stormy?).and_return false
    expect { 21.times { airport.land(plane) } }.to raise_error("Airport full!")
  end

  # As the system designer
  # So that the software can be used for many different airports
  # I would like a default airport capacity that can be overridden as appropriate
  it "is able to override the airport's capacity" do
    allow(airport).to receive(:stormy?).and_return false
    airport.override_capacity(1)
    airport.land(plane)
    expect { airport.land(plane) }.to raise_error("Airport full!")
  end
end
