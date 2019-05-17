class DockingStation
  attr_reader :bikes
  attr_reader :capacity
  DEFAULT_CAPACITY = 20
  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end
  def add_bike(bike)
    raise 'no space for that boi' if full?
    @bikes.push(bike)
  end
  def release_bike
    raise 'No bikes are available' unless any_working_bikes?
    working_bike_index = get_working_bike_index
    a_working_bike = @bikes[working_bike_index]
    @bikes.delete_at(working_bike_index)
    a_working_bike
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
  def any_working_bikes?
    return false if get_working_bike_index.nil?
    true
  end
  def get_working_bike_index
    @bikes.each.with_index do |bike, bike_index|
       return bike_index if bike.working?
    end
    nil
  end
end
