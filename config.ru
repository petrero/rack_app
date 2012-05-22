require "rack_greeter"

use Rack::Reloader, 0 #any change is picked up instantly, from here is 0
use Rack::Auth::Basic do |username, password|
  password = "secret"
end

run Rack::Cascade.new([Rack::File.new("public"), RackGreeter])
