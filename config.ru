require "rack_greeter"

use Rack::Reloader, 0 #any change is picked up instantly, from here is 0

run RackGreeter.new
