require 'test/spec_helper'
require 'awesome_print'

describe 'SEPTA' do
  it 'should return bus data' do
    bus_42 =  Septa.get_bus_data(42)
    bus_42["bus"].should_not be nil
  end

  it 'should return next to arrive' do 
    ambler_to_angora = Septa.next_to_arrive("Ambler", "Angora")
    ambler_to_angora.should_not be nil
  end
end

