class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
    @capacity = 20
  end
  def add_bike(bike)
    raise 'no space for that boi' if full?
    @bikes.push(bike)
  end
  def release_bike
    raise 'No dice mate' if empty?
    @bikes.sample
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
