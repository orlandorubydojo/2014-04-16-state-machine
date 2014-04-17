require './dog.rb'

describe Dog do

  before do
    @baron = Dog.new("Baron")
  end

  it 'should have a name' do
    expect(@baron.name).to eq("Baron")
  end

  it 'should start out sleeping' do
    expect(@baron.state).to eq("sleeping")
  end

  it 'should wake up and play' do
    @baron.wake_up
    expect(@baron.state).to eq("playing")
  end

  it 'should stop playing and eat' do
    @baron.state = "playing"
    @baron.gets_hungry
    expect(@baron.state).to eq("eating")
  end

  it 'should finish eating and go to sleep' do
    @baron.state = "eating"
    expect(@baron.state).not_to eq("sleeping")
    @baron.gets_sleepy
    expect(@baron.state).to eq("sleeping")
  end

  it 'should not wake up and immediately eat' do
    @baron.gets_hungry
    expect(@baron.state).not_to eq("eating")
  end

  it 'should not wake up and immediately sleep' do
    expect(@baron.gets_sleepy).to be_false
  end

  it 'should bark while playing' do
    @baron.should_receive(:bark)
    @baron.wake_up
  end

  it 'should bark when barking' do
    expect(@baron.bark).to eq("woof")
  end














end
