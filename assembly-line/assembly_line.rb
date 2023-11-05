class AssemblyLine
  
  CARS_PRODUCED_PER_HOUR_AT_SLOWEST_SPEED = 221
  MINUTES_PER_HOUR = 60

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    total_cars_produced = @speed * CARS_PRODUCED_PER_HOUR_AT_SLOWEST_SPEED

    if 1 <= @speed && @speed <= 4
      return Float(total_cars_produced)
    elsif 5 <= @speed && @speed <= 8
      return total_cars_produced * 0.9
    elsif @speed == 9
      return total_cars_produced * 0.8
    elsif @speed == 10
      return total_cars_produced * 0.77
    end
  end

  def working_items_per_minute
    production_rate_per_hour().to_i / MINUTES_PER_HOUR
  end
end
