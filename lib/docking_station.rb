class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
    @capacity = 20
  end
  def add_bike(bike)
    raise 'no space for that boi' if @bikes.length >= @capacity
    @bikes.push(bike)
  end
  def release_bike
    raise 'No dice mate' if @bikes.empty?
    @bikes.sample
  end
end
