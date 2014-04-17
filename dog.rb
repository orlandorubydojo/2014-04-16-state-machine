require 'state_machine'
class Dog

  attr_reader :name

  def initialize(name)
    @name = name
    super()
  end

  state_machine :state, :initial => :sleeping do
    state :playing
    state :eating
    state :sleeping

    after_transition :sleeping => :playing do |dog|
      dog.bark
    end

    event :wake_up do
      transition :sleeping => :playing
    end

    event :gets_hungry do
      transition :playing => :eating
    end

    event :gets_sleepy do
      transition :eating => :sleeping
    end
  end

  def bark
    "woof"
  end

















end
