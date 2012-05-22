class RackGreeter
  def call(env)
    Rack::Response.new("Hello")
  end
end
