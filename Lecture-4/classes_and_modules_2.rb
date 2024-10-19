class Engine
  attr_accessor :model

  def initialize(model)
    @model= model
  end

  def turn_on!
    puts "Engine #{@model} started successfully"
  end

end

engine = Engine.new("V-Engine")
#engine.turn_on!
#engine.model = "Flat Engine"
puts "Current model: #{engine.model}"
