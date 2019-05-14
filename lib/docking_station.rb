class DockingStation
  attr_reader :bikes
  def add_bike(bike)
    @bikes = bike
  end
  def release_bike
    @bikes
  end
end
