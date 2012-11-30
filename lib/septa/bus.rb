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
      loc = bus_locations
      unless loc.nil?
        loc.each do |l|
          locations[l['VehicleID']] = [l['lat'].to_f, l['lng'].to_f]
        end
      end
      locations
    end

    def format_locations(locations)
      locations.each do |loc| 
        loc['lat'] = loc['lat'].to_f
        loc['lng'] = loc['lng'].to_f
      end
    end

    def bus_locations
      septa_url = "http://www3.septa.org/hackathon/TransitView/trips?route=#{@bus_number.to_s}"
      resp = Resourceful.get(septa_url)
      unless resp.body.downcase.include? 'invalid route'
        locations = JSON.parse(resp.body)
        return format_locations(locations['bus'])
      end
      []
    end
  end
end
