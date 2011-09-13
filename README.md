A SEPTA api wrapper gem.

to install:

>`git clone git@github.com:joannecheng/septa-ruby.git`

>`gem build septa-ruby/septa-ruby.gemspec`

>`gem install septa-ruby/septa-ruby-(version #).gem`

to use:

>`require 'septa-ruby'`


Getting bus locations:

`Septa.get_bus_data(*bus_route_name*)`

Example:

>`Septa.get_bus_data(42)`


Next to arrive:

`Septa.next_to_arrive(City 1, City 2)`

Example:

>`Septa.next_to_arrive('Ambler', 'Angora')`

_Note: See http://www.opendataphilly.org/opendata/resource/171/septa-next-to-arrive/ to see allowed stops._
