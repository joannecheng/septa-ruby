require 'resourceful'

module Septa
  class Bus
    @septa_url = 'http://:www3.septa.org/transitview/bus_route_data/'

    def initialize(bus_number)
      @bus_number = bus_number
    end

    def get_positions
      resp = Resourceful.get(@septa_url+@bus_number)
      puts resp.body
    end
  end
end
