A SEPTA api wrapper gem.

to install:

>`gem install septa.gem`

to use:

>`require 'septa'`


Getting raw response from bus_locations/<bus_number>:

>`bus = Septa::Bus.new(<bus_number>)`

>`bus.bus_locations()`

Getting just location and vehicleID
>`bus = Septa::Bus.new(<bus_number>)`

>`bus.locations()`

Next to arrive:

>`Septa::Train.next_to_arrive(City 1, City 2)`

Example:

>`Septa::Train.next_to_arrive('Ambler', 'Angora')`

_Note: See http://www.opendataphilly.org/opendata/resource/171/septa-next-to-arrive/ to see allowed stops._

Run Tests:
>`rspec test/`
