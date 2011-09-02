require 'test/spec_helper'

describe 'SEPTA' do
  it 'should return septa data' do
    Septa::Bus(42).should_not be nil
  end
end

