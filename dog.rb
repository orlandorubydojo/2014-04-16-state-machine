require 'state_machine'
class Dog

  attr_reader :state, :name

  def initialize(name)
    @name = name
  end

  state_machine :state, :initial => :sleeping do
    state :playing
    state :eating
    state :sleeping

    event :play do
      transition :sleeping => :eating
    end
  end

end
