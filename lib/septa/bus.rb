require 'resourceful'
require 'json'

module Septa
  class Bus
    attr_accessor :bus_number
    def initialize(bus_number)
      @bus_number = bus_number
    end

    def location
      locations = {}
      loc = self.bus_locations()
      unless loc.nil?
        loc['bus'].each do |l|
          locations[l['VehicleID']] = [l['lat'], l['lng']]
        end
      end
    end

    def bus_locations
      septa_url = "http://www3.septa.org/transitview/bus_route_data/#{@bus_number.to_s}"
      resp = Resourceful.get(septa_url)
      unless resp.body.downcase.include? 'invalid route'
        JSON.parse(resp.body)
      end
    end
  end
end
