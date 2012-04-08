require 'resourceful'
require 'json'

module Septa
  class Bus
    def self.bus_locations(bus_number)
      septa_url = "http://www3.septa.org/transitview/bus_route_data/#{bus_number.to_s}"
      resp = Resourceful.get(septa_url)
      unless resp.body.downcase.include? 'invalid route'
        JSON.parse(resp.body)
      end
    end
  end
end
