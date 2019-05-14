require 'bike'
require 'docking_station'

describe 'docking_station.add_bike.release_bike' do
  it '.working?' do
    bike = Bike.new
    docking_station = DockingStation.new
    docking_station.add_bike(bike)
    expect(docking_station.release_bike.working?).to eql(true)
  end
end
