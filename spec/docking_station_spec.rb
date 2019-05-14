require 'docking_station'

describe DockingStation do
  it 'docking station created' do
    expect{DockingStation.new}.not_to raise_error
  end
  before(:each) do
    @docking_station = DockingStation.new
  end
  it 'can release bike' do
    expect(@docking_station).to respond_to(:release_bike)
  end
  it '.add_bike' do
    @docking_station.add_bike('bike')
    expect(@docking_station.bikes).to eq(['bike'])
  end
  context '::bikes == empty' do
    it '.release_bike' do
      expect{@docking_station.release_bike}.to raise_error('No dice mate')
    end
  end
end
