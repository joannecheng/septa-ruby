require 'uri'
require 'http/net'
require 'json'

module Gem
  class SeptaRuby
    @septa_url = 'http://:www3.septa.org/transitview/bus_route_data/'
    def get_all_upcoming_buses(bus_num)
      res = get_bus_data(bus_num)
      puts res
      JSON.parse(res)
    end
    
    def get_bus_data(bus_num)
      url = URI.parse(@septa_url+bus_num)
      Net::HTTP.get_print(url)
    end

  end
end
