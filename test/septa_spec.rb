require 'test/spec_helper'

describe 'SEPTA' do
  it 'should return current bus locations' do
    bus_42 =  Septa::Bus.bus_locations(42)
    bus_42["bus"].should_not be nil
  end

  it 'should return next to arrive' do 
    ambler_to_angora = Septa::Train.next_to_arrive("Ambler", "Angora")
    ambler_to_angora.should_not be nil
  end
end

