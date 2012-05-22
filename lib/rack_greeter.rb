require "erb"
class RackGreeter
  def call(env)
    request = Rack::Request.new(env)
    case request.path
    when "/" then Rack::Response.new(render("index.html.erb"))
    else Rack::Response.new("Not Found", 404) 
    end
  end
end

def render(template)
  path = File.expand_path("../views/#{template}", __FILE__)
  ERB.new(File.read(path)).result(binding)
end
