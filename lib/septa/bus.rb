require 'resourceful'
require 'json'

module Septa
  module Bus  
    def get_bus_data(bus_number)
      septa_url = 'http://www3.septa.org/transitview/bus_route_data/'+bus_number.to_s
      resp = Resourceful.get(septa_url)
      JSON.parse(resp.body)
    end

    def next_to_arrive(city1, city2)
      septa_url = "http://www3.septa.org/api/nta/"
      resp = Resourceful.get("#{septa_url}#{city1}/#{city2}")
      JSON.parse(resp.body)
    end
  end
end
