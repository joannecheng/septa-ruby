require 'test/spec_helper'
require 'awesome_print'

describe 'SEPTA' do
  it 'should return bus data' do
    bus_42 =  Septa.get_bus_data(42)
    bus_42["bus"].should_not be nil
  end
end

