module EngineHelpers
  def check_old
    puts "I am checking the oil now."
  end

  def check_fuel
    puts "I am checking the fuel now."
  end
end

class CarEngine
  extend EngineHelpers
end

CarEngine.check_old

class ShipEngine
  include EngineHelpers
end

ShipEngine.new.check_old
