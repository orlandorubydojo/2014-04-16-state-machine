require './dog.rb'

describe Dog do

  before do
    @baron = Dog.new("Baron")
  end

  it 'should have a name' do
    expect(@baron.name).to eq("Baron")
  end

  it 'should start out sleeping' do
  end

  it 'should have a name' do
  end

  it 'should go to sleep' do
  end

  it 'should play' do
  end

  it 'should eat' do
  end

end
