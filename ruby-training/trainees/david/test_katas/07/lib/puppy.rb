class Puppy
  SPEAK_STATES = {
    calm: 'Bark!',
    angry: 'BARK BARK BARK!',
    growling: 'Grrrr.'
  }
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
    update_state_when_petted
    @pet += 1
  end

  def rub_belly
    reset_values
  end

  def spray
    update_state_when_sprayed
    @sprayed += 1
  end

  def speak
    SPEAK_STATES[@state]
  end

  private

  def reset_values
    calm
    @pet = 0
    @sprayed = 0
  end

  def calm
    @state = :calm
  end

  def wag
    @state = :wagging
  end

  def excited
    @state = :excited
  end

  def angry
    @state = :angry
  end

  def growling
    @state = :growling
  end

  def update_state_when_sprayed
    @sprayed  > 0 ? angry : growling
  end

  def update_state_when_petted
    @pet  > 0 ? excited : wag
  end

end
