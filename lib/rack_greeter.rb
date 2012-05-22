require "erb"
class RackGreeter
  def call(env)
    Rack::Response.new(render("index.html.erb"))
  end
end

def render(template)
  path = File.expand_path("../views/#{template}", __FILE__)
  ERB.new(File.read(path)).result(binding)
end
