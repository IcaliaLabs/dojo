class Puppy
  # Creates an instance variable "state" that you can set in your class.
  # "_reader" means other objects can read your state by calling "some_puppy.state".
  attr_reader :state

  def initialize
    # Puppies are calm at first.
    @state = :calm
    @pet = 0
    @sprayed = 0
  end

  def pet
    if @pet < 1
      @state = :wagging    
    elsif @pet > 0
      @state = :excited
    end
    @pet += 1
  end

  def rub_belly
    @state = :calm    
    @pet = 0
    @sprayed = 0
  end

  def spray
    if @sprayed < 1
      @state = :growling     
    elsif @sprayed > 0
      @state = :angry
    end
    @sprayed += 1
  end

  def speak
    case @state
      when :growling
        'Grrrr.'
      when :angry
        'BARK BARK BARK!'
      when :calm
        'Bark!'
    end
  end
end
