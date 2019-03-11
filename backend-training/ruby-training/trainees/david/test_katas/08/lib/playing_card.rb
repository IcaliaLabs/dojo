class PlayingCard
  attr_accessor :suit, :value

  def initialize(value, suit)
    @suit = suit
    @value = value
  end

  def inspect
    "#{value.to_s} of #{suit.to_s}"
  end
end