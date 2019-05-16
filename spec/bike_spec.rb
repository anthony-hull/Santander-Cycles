require 'bike'
describe Bike do
  before(:each) do
    @bike = Bike.new
  end
  it 'does working? respond_to' do
    expect(@bike).to respond_to(:working?)
  end

  it '.working? true' do
    expect(@bike.working?).to eql(true)
  end

  it '.working? false' do
    @bike.broken
    expect(@bike.working?).to eql(false)
  end
end
