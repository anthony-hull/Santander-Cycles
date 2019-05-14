class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end
  def add_bike(bike)
    @bikes.push(bike)
  end
  def release_bike
    raise 'No dice mate' if @bikes.empty?
    @bikes.sample
  end
end
