require 'bike'
require 'docking_station'

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
      @bike.broken
      @docking_station.add_bike(@bike)
      expect(@docking_station.release_bike.working?).to eql(false)
    end
  end
end
