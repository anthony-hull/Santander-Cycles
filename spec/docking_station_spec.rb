require 'docking_station'
require 'pry-byebug'

describe 'DockingStation' do
  DEFAULT_CAPACITY = DockingStation::DEFAULT_CAPACITY
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
      expect{@docking_station.release_bike}.to raise_error('No bikes are available')
    end
  end
  context '::bikes.count == DEFAULT_CAPACITY' do
    @docking_station = DockingStation.new
    it 'can accept up to the maximum capacity of bikes' do
      expect{DEFAULT_CAPACITY.times{@docking_station.add_bike('Bike')}}.to_not raise_error
    end
    it '.add_bike(bike)' do
      DEFAULT_CAPACITY.times{ @docking_station.add_bike('Bike') }
      expect do 
        @docking_station.add_bike('another bike')
      end.to raise_error('no space for that boi')
    end
  end


  it '.new(capacity=15)' do
    expect(DockingStation.new(15).capacity).to eq(15)
  end
end