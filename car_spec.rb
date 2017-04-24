require './car.rb'

describe Car do

  let(:driver) { instance_double('Driver', car: self) }

  before do
    allow(driver).to receive(:car).and_return(self)
    allow(driver).to receive(:car=)
  end

  subject { described_class.new('blue')}

  it "can change color" do
    subject.paints('red')
    expect(subject.color).to eq 'red'
  end

  it "should have a driver" do
    expected_output = self
    expect(driver.car).to be self
  end

end
