A SEPTA api wrapper gem.

to install:

>`gem install septa.gem`

to use:

>`require 'septa'`


Getting bus locations:

`Septa::Bus.bus_locations(*bus_route_name*)`

Example:

>`Septa::Bus.bus_locations(42)`


Next to arrive:

`Septa::Train.next_to_arrive(City 1, City 2)`

Example:

>`Septa::Train.next_to_arrive('Ambler', 'Angora')`

_Note: See http://www.opendataphilly.org/opendata/resource/171/septa-next-to-arrive/ to see allowed stops._

Run Tests:
>`rspec test/`
