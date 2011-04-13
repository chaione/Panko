Panko
=====
Crunchy breadcrumbs for Ruby apps. Can do hierarchical-style or flat browsing history.

Usage
-----

Add a breadcrumb:

    breadcrumb monkey_beaver_path(@monkey_beaver), @monkey_beaver.name

Make it stick to a slot on the trail, if the trail is this long already. This truncates the trail:

    breadcrumb monkey_beaver_path(@monkey_beaver), @monkey_beaver.name, :index => 1

Reset the trail when diving down a new branch:

    reset_breadcrumbs
  
You're responsible for the view code, but you get a handy accessor for the stack:

    breadcrumbs.map {|breadcrumb| link_to breadcrumb[:title], breadcrumb[:url] }

Requirements
------------
* ActionController

Not implemented:
----------------
* variable depth (max depths is 3)
* alternate storage (uses the Rails session hash)
* automatic hierarchy discovery
* automatic frying

Contributing:
-------------
Fork and pull request.

License:
--------
Hard to imagine.