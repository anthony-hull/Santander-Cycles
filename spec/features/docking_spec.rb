require 'bike'
require 'docking_station'
require 'pry-byebug'
describe 'docking_station.add_bike.release_bike' do
  before(:each) do
    @bike = Bike.new
    @docking_station = DockingStation.new
  end
  it '.release_bike.working?' do
    @docking_station.add_bike(@bike)
    expect(@docking_station.release_bike.working?).to eql(true)
  end
  context 'DockingStation:Bikes = [Bike:working = false]' do
    it 'release_bike.working?' do
      @bike = Bike.new
      @docking_station = DockingStation.new
      @bike.broken
      @docking_station.add_bike(@bike)
      expect{@docking_station.release_bike}.to raise_error('No bikes are available')
    end
  end
  context 'DockingStation:Bikes = [Bike:working = 6_false 3_true]' do
    it '3.times.release_bike.working?' do
      @bike = Bike.new
      @docking_station = DockingStation.new
      3.times{@bike = Bike.new; @docking_station.add_bike(@bike)}
      6.times{@bike = Bike.new; @bike.broken; @docking_station.add_bike(@bike)}
      2.times{@docking_station.release_bike}
      expect{@docking_station.release_bike}.to_not raise_error
    end
  end
end
