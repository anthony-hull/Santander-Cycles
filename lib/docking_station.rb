class DockingStation
  attr_reader :bikes
  attr_reader :capacity
  def initialize(capacity=20)
    @bikes = []
    @capacity = capacity
  end
  def add_bike(bike)
    raise 'no space for that boi' if full?
    @bikes.push(bike)
  end
  def release_bike
    raise 'No bikes are available' if empty?
    @bikes.shift
  end
  private
  def ryan
    'saved'
  end
  def full?
    @bikes.length >= @capacity
  end
  def empty?
    @bikes.length.zero?
  end
end
