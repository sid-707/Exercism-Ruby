class LocomotiveEngineer
  def self.generate_list_of_wagons(*ids)
    return ids
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    (second, third, first, *rest) = each_wagons_id

    return [first, *missing_wagons, *rest, second, third]
  end

  def self.add_missing_stops(route, **stops)
    return { **route, stops: stops.values}
  end

  def self.extend_route_information(route, more_route_information)
    return { **route, **more_route_information }
  end
end
