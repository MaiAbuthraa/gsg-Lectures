module EngineHelpers
  def check_old
    puts "I am checking the oil now."
  end

  def check_fuel
    puts "I am checking the fuel now."
  end
end


class Engine
  @@number_of_engines = 0

  class << self
    def total_number_of_engines
      puts "The number of initialized engines: #{@@number_of_engines}"
    end
  end

  include EngineHelpers

  MANUFACTURING_DATA = 1940

  attr_accessor :model, :manufacturing_date
  # attr_reader
  # attr_writer

  def initialize(model)
    @model= model
    @manufacturing_date = MANUFACTURING_DATA + 30
    @@number_of_engines += 1
  end

  def turn_on!
    puts "Engine #{@model} started successfully"
  end

  def turn_off!
    puts "Engine #{@model} stopped successfully"
  end

  def restart
    "I'm restarting the engine now."
    turn_off!
    turn_on!
  end

  def run
    "Driving>>>>"
  end
end


engine = Engine.new("V-Engine")
engine.check_old
engine.check_fuel
engine.turn_on!
puts "Current model: #{engine.model}"
engine.model = "Flat Engine"
engine.restart
puts "Manufacturing date: #{engine.manufacturing_date}"

class CarEngine < Engine

  def run
    super + "Car"
  end
end

car_engine = CarEngine.new("Petrol-Engine")
puts "CarEngine run method: #{car_engine.run}"

Engine.total_number_of_engines
