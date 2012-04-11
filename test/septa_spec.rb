require 'test/spec_helper'

describe 'SEPTA' do
  it 'should return current bus locations' do
    bus_42 = Septa::Bus.new(42)
    bus_42 = bus_42.bus_locations()
    bus_42["bus"].should_not be nil
  end

  it 'should return nil if invalid route' do
    bus =  Septa::Bus.new(1924941).bus_locations()
    bus.should be nil
  end

  it 'should return next to arrive' do 
    ambler_to_angora = Septa::Train.next_to_arrive("Ambler", "Angora")
    ambler_to_angora.should_not be nil
  end
end

