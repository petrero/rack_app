class RackGreeter
  def call(env)
    [200, {"Content-Type" => "text/plain"}, ["Hello World!"]]
  end
end

run RackGreeter.new
