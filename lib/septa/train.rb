require 'resourceful'
require 'json'

module Septa
  class Train 
    def self.next_to_arrive(city1, city2)
      septa_url = "http://www3.septa.org/api/nta/"
      resp = Resourceful.get("#{septa_url}#{city1}/#{city2}")
      JSON.parse(resp.body)
    end
  end
end
