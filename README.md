A SEPTA api wrapper gem.

to install:

>`gem install septa.gem`

to use:

>`require 'septa'`


Getting bus locations:

`Septa.get_bus_data(*bus_route_name*)`

Example:

>`Septa.get_bus_data(42)`


Next to arrive:

`Septa.next_to_arrive(City 1, City 2)`

Example:

>`Septa.next_to_arrive('Ambler', 'Angora')`

_Note: See http://www.opendataphilly.org/opendata/resource/171/septa-next-to-arrive/ to see allowed stops._
