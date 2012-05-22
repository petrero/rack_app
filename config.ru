class RackGreeter
  def call(env)
    [200, {}, ["Hello World!"]]
  end
end

run RackGreeter.new
