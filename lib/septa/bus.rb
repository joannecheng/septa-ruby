require 'resourceful'
require 'json'

module Septa
  class Bus
    attr_accessor :bus_number
    def initialize(bus_number)
      @bus_number = bus_number
    end

    def locations
      locations = {}
      loc = self.bus_locations()
      unless loc.nil?
        loc.each do |l|
          locations[l['VehicleID']] = [l['lat'].to_f, l['lng'].to_f]
        end
      end
      locations
    end

    def format_locations(locations)
      location = []
      locations.each do |loc| 
        loc['lat'] = loc['lat'].to_f
        loc['lng'] = loc['lng'].to_f
      end
    end

    def bus_locations
      septa_url = "http://www3.septa.org/transitview/bus_route_data/#{@bus_number.to_s}"
      resp = Resourceful.get(septa_url)
      unless resp.body.downcase.include? 'invalid route'
        locations = JSON.parse(resp.body)
        return self.format_locations(locations['bus'])
      end
    end
  end
end
