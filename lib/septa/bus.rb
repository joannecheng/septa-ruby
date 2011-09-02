require 'resourceful'
require 'json'

module Septa
  module Bus  
    def get_bus_data(bus_number)
      septa_url = 'http://www3.septa.org/transitview/bus_route_data/'+bus_number.to_s
      resp = Resourceful.get(septa_url)
      JSON.parse(resp.body)
    end
  end
end
